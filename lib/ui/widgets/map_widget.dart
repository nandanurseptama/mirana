import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mirana/features/place/data/models/place_type_enum.dart';

class MapWidget extends StatelessWidget {
  final LatLng? currentLocation;
  final void Function(LatLng position) onDragEnd;
  final List<Marker> placesMarkers;
  final void Function(GoogleMapController controller) onMapCreated;
  final void Function(PlaceTypeEnum? placeType)? onChangePlaceType;
  final PlaceTypeEnum selectedPlaceType;
  final BoxConstraints constraints;
  final TextEditingController searchFieldController;
  const MapWidget(
      {super.key,
      this.currentLocation,
      required this.placesMarkers,
      required this.onMapCreated,
      required this.onDragEnd,
      this.onChangePlaceType,
      required this.selectedPlaceType,
      required this.constraints, required this.searchFieldController});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: constraints,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            child: _map(),
          ),
          Positioned(
            top: 30,
            left: 8,
            right: 8,
            child: Row(
              children: [
                _keywordFilter(context),
                _placeTypeFilter(context)
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _keywordFilter(BuildContext context) {
    return Container(
      constraints: constraints.copyWith(
          maxHeight: 70, maxWidth: (constraints.maxWidth - 16) * 0.6),
      decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor.withOpacity(0.8),
          borderRadius: BorderRadius.circular(4),
          border: const Border.fromBorderSide(BorderSide.none)),
      child: TextFormField(
        controller: searchFieldController,
        decoration: InputDecoration(
          hintText: "Type place name or address",
          hintStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
            fontSize: 12
          )
        ),
      ),
    );
  }

  Widget _placeTypeFilter(BuildContext context) {
    return Container(
      constraints: constraints.copyWith(
          maxHeight: 70, maxWidth: (constraints.maxWidth - 16) * 0.4),
      decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor.withOpacity(0.8),
          borderRadius: BorderRadius.circular(4),
          border: const Border.fromBorderSide(BorderSide.none)),
      child: DropdownButtonFormField<PlaceTypeEnum>(
          value: selectedPlaceType,
          items: List.generate(PlaceTypeEnum.values.length, (index) {
            return DropdownMenuItem(
                value: PlaceTypeEnum.values[index],
                child: Text(PlaceTypeEnum.values[index].title));
          }),
          onChanged: onChangePlaceType),
    );
  }

  Widget _map() {
    var intialLocation =
        currentLocation ?? const LatLng(-6.2295695, 106.7471175);
    var initialCameraPosition = CameraPosition(
      target: intialLocation,
      zoom: 15,
      bearing: 3,
      tilt: 0,
    );

    return Container(
      constraints: constraints,
      child: GoogleMap(
          initialCameraPosition: initialCameraPosition,
          mapType: MapType.normal,
          markers: {
            Marker(
                markerId: const MarkerId("me_places"),
                position: intialLocation,
                onDragEnd: onDragEnd,
                draggable: true),
            ...placesMarkers.toSet(),
          },
          onMapCreated: onMapCreated),
    );
  }
}
