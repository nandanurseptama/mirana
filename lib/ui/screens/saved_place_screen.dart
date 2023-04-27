import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:mirana/features/place/data/models/place_model.dart';
import 'package:mirana/features/place/states/saved_places_bloc/saved_places_bloc.dart';
import 'package:mirana/ui/widgets/error_widget.dart';
import 'package:mirana/ui/widgets/saved_place_item.dart';

class SavedPlaceScreen extends StatefulWidget {
  final GetIt instance;
  const SavedPlaceScreen({super.key, required this.instance});

  @override
  State<SavedPlaceScreen> createState() => _SavedPlaceScreenState();
}

class _SavedPlaceScreenState extends State<SavedPlaceScreen> {
  late final SavedPlacesBloc savedPlacesBloc =
      widget.instance.get<SavedPlacesBloc>();
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      loadSavedPlace();
    });
    super.initState();
  }

  loadSavedPlace() {
    savedPlacesBloc.add(const SavedPlacesEvent.loadSavedPlaces());
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          height: constraints.maxHeight,
          width: constraints.maxWidth,
          alignment: Alignment.center,
          child: _builder(constraints: constraints),
        );
      },
    );
  }

  Widget _builder({required BoxConstraints constraints}) {
    return BlocBuilder<SavedPlacesBloc, SavedPlacesState>(
      builder: (context, savedPlaceState) {
        return savedPlaceState.maybeMap(
          loading: (value) {
            if (value.places == null) {
              return _loadingPlaceHolder();
            }
            if (value.places!.isEmpty) {
              return _loadingPlaceHolder();
            }
            return _listSavedPlace(
                constraints: constraints, places: value.places!);
          },
          error: (value) {
            if (value.places == null) {
              return _error(value.error);
            }
            if (value.places!.isEmpty) {
              return _error(value.error);
            }
            return _listSavedPlace(
                constraints: constraints, places: value.places!);
          },
          loaded: (value) {
            return _listSavedPlace(
                constraints: constraints, places: value.places);
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

  Widget _emptySavedPlace() {
    return Center(
      child: ErrorWithReloadWidget(
        errorMessage: "Saved Place is empty. Try add one from map",
        buttonCaption: "Refresh",
        onReload: () {
          loadSavedPlace();
          return;
        },
      ),
    );
  }

  Widget _error(String error) {
    return ErrorWithReloadWidget(
      errorMessage: error,
      buttonCaption: "Refresh",
      onReload: () {
        loadSavedPlace();
        return;
      },
    );
  }

  Widget _listSavedPlace(
      {required List<PlaceModel> places, required BoxConstraints constraints}) {
    if (places.isEmpty) {
      return _emptySavedPlace();
    }
    return Container(
      constraints: constraints,
      alignment: Alignment.topCenter,
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: List.generate(places.length, (index) {
            return SavedPlaceItemWidget(
                place: places[index], onDelete: onDeletePlace);
          }),
        ),
      ),
    );
  }

  void onDeletePlace(PlaceModel place) {
    savedPlacesBloc.add(SavedPlacesEvent.deletePlace(place));
    return;
  }
}
