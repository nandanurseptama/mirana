import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mirana/cores/utils/generate_bitmap_descriptor_from_icon_data.dart';
import 'package:mirana/features/location/states/bloc/device_location_bloc.dart';
import 'package:mirana/features/place/data/models/place_model.dart';
import 'package:mirana/features/place/data/models/place_type_enum.dart';
import 'package:mirana/features/place/states/near_by_places_bloc/near_by_places_bloc.dart';
import 'package:mirana/features/place/states/saved_places_bloc/saved_places_bloc.dart';
import 'package:mirana/ui/widgets/error_widget.dart';
import 'package:mirana/ui/widgets/list_of_places_widget.dart';
import 'package:mirana/ui/widgets/map_widget.dart';

class HomeScreen extends StatefulWidget {
  final GetIt instance;
  const HomeScreen({super.key, required this.instance});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();
  late final DeviceLocationBloc deviceLocationBloc =
      widget.instance.get<DeviceLocationBloc>();
  late final NearByPlacesBloc nearByPlacesBloc =
      widget.instance.get<NearByPlacesBloc>();

  late final SavedPlacesBloc savedPlacesBloc =
      widget.instance.get<SavedPlacesBloc>();

  BitmapDescriptor? hospitalBitmap;
  BitmapDescriptor? restaurantBitmap;
  final ValueNotifier<PlaceTypeEnum> _selectedPlaceType =
      ValueNotifier(PlaceTypeEnum.both);

  bool isAllMarkerLoaded = false;
  final TextEditingController _searchFieldController = TextEditingController();

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      loadMarkers();
    });
    super.initState();
  }

  @override
  dispose() {
    _searchFieldController.dispose();
    super.dispose();
  }

  Future<void> loadMarkers() async {
    try {
      var result = await Future.wait([
        generateBitmapDescriptorFromIconData(
            icon: Icons.local_hospital, color: Colors.pink),
        generateBitmapDescriptorFromIconData(
            icon: Icons.restaurant, color: Colors.purple)
      ]);
      setState(() {
        hospitalBitmap = result[PlaceTypeEnum.hospital.id];
        restaurantBitmap = result[1];
        isAllMarkerLoaded = true;
      });
      return;
    } catch (e) {
      setState(() {
        isAllMarkerLoaded = true;
      });
      return;
    }
  }

  void onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
    return;
  }

  void onChangeCurrentPosition(LatLng position) {
    deviceLocationBloc.add(DeviceLocationEvent.changeLocation(position));
    return;
  }

  void onChangePlaceType(PlaceTypeEnum? placeType) {
    if (placeType == null) {
      return;
    }
    setState(() {
      _selectedPlaceType.value = placeType;
    });
    return;
  }

  

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<TextEditingValue>(
        valueListenable: _searchFieldController,
        builder: (context, keyword, _) {
          return ValueListenableBuilder<PlaceTypeEnum>(
              valueListenable: _selectedPlaceType,
              builder: (context, selectedPlaceType, _) {
                return LayoutBuilder(builder: (context, constraints) {
                  return Container(
                    constraints: constraints,
                    child: Column(
                      children: [
                        Builder(builder: (context) {
                          var c = constraints.copyWith(
                              maxWidth: constraints.maxWidth,
                              maxHeight: constraints.maxHeight * 0.6);
                          return Container(
                            constraints: c,
                            alignment: Alignment.center,
                            child: _mapBuilder(
                                constraints: c,
                                selectedPlaceType: selectedPlaceType,
                                keyword: keyword.text),
                          );
                        }),
                        Container(
                          constraints: constraints.copyWith(
                              maxWidth: constraints.maxWidth,
                              maxHeight: constraints.maxHeight * 0.4),
                          alignment: Alignment.center,
                          child: _listOfPlaces(),
                        ),
                      ],
                    ),
                  );
                });
              });
        });
  }

  Widget _onPermissionError(String error) {
    return ErrorWithReloadWidget(
      errorMessage: error,
      buttonCaption: "Request Permission Again",
      onReload: () {
        deviceLocationBloc.add(const DeviceLocationEvent.loadCurrentLocation());
        return;
      },
    );
  }

  Widget _mapBuilder({
    required BoxConstraints constraints,
    required PlaceTypeEnum selectedPlaceType,
    String keyword = "",
  }) {
    return BlocConsumer<DeviceLocationBloc, DeviceLocationState>(
      listener: (context, deviceLocationState) {
        return;
      },
      builder: (context, deviceLocationState) {
        return deviceLocationState.maybeMap(
          error: (value) {
            return _onPermissionError(value.error);
          },
          loading: (value) {
            return _loadingPlaceHolder();
          },
          loaded: (value) {
            return _nearbyPlaceBuilder(
              constraints: constraints,
              currentLocation: value.location,
              selectedPlaceType: selectedPlaceType,
              keyword: keyword,
            );
          },
          orElse: () {
            return SizedBox();
          },
        );
      },
    );
  }

  Widget _nearbyPlaceBuilder(
      {required LatLng currentLocation,
      required BoxConstraints constraints,
      required PlaceTypeEnum selectedPlaceType,
      String keyword = ""}) {
    return BlocBuilder<NearByPlacesBloc, NearByPlacesState>(
      bloc: nearByPlacesBloc
        ..add(NearByPlacesEvent.loadNearbyPlaces(
            location: currentLocation,
            placeType: selectedPlaceType,
            keyword: keyword)),
      builder: (context, nearbyPlaceState) {
        return nearbyPlaceState.maybeMap(
          error: (value) {
            return ErrorWithReloadWidget(
              errorMessage: value.error,
              onReload: () {
                nearByPlacesBloc.add(NearByPlacesEvent.loadNearbyPlaces(
                    location: currentLocation,
                    keyword: keyword,
                    placeType: selectedPlaceType));
                return;
              },
            );
          },
          loaded: (value) {
            return _map(
                constraints: constraints,
                devicePosition: currentLocation,
                nearbyPlaces: value.places,
                selectedPlaceType: selectedPlaceType);
          },
          loading: (value) {
            return _loadingPlaceHolder();
          },
          orElse: () {
            return SizedBox();
          },
        );
      },
    );
  }

  Widget _loadingPlaceHolder() {
    return const Center(
      child: SizedBox(
        height: 50,
        width: 50,
        child: CircularProgressIndicator(),
      ),
    );
  }

  Widget _map(
      {required BoxConstraints constraints,
      LatLng? devicePosition,
      List<PlaceModel> nearbyPlaces = const [],
      required PlaceTypeEnum selectedPlaceType}) {
    var nearbyPlacesMarkers = List.generate(nearbyPlaces.length, (index) {
      var icon = (nearbyPlaces[index].type == PlaceTypeEnum.hospital
              ? hospitalBitmap
              : restaurantBitmap) ??
          BitmapDescriptor.defaultMarker;
      return Marker(
          markerId: MarkerId(index.toString()),
          icon: icon,
          draggable: false,
          position: LatLng(
              double.parse(
                nearbyPlaces[index].latitude,
              ),
              double.parse(nearbyPlaces[index].longitude)));
    });
    return !isAllMarkerLoaded
        ? _loadingPlaceHolder()
        : MapWidget(
            constraints: constraints,
            placesMarkers: nearbyPlacesMarkers,
            onMapCreated: onMapCreated,
            selectedPlaceType: selectedPlaceType,
            onDragEnd: onChangeCurrentPosition,
            onChangePlaceType: onChangePlaceType,
            currentLocation: devicePosition,
            searchFieldController: _searchFieldController,
          );
  }

  Widget _listOfPlaces() {
    return BlocBuilder<DeviceLocationBloc, DeviceLocationState>(
      bloc: deviceLocationBloc,
      builder: (context, deviceLocationState) {
        return deviceLocationState.maybeMap(loaded: (loadedDeviceLocation) {
          return BlocBuilder<NearByPlacesBloc, NearByPlacesState>(
            bloc: nearByPlacesBloc,
            builder: (context, nearbyPlacesState) {
              return nearbyPlacesState.maybeMap(
                loaded: (value) {
                  return ListOfPlacesWidget(
                    places: value.places,
                    currentLocation: loadedDeviceLocation.location,
                    savedPlacesBloc: savedPlacesBloc,
                  );
                },
                orElse: () {
                  return const SizedBox();
                },
              );
            },
          );
        }, orElse: () {
          return const SizedBox();
        });
      },
    );
  }
}
