import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mirana/features/place/data/models/place_model.dart';
import 'package:mirana/features/place/data/models/place_type_enum.dart';
import 'package:mirana/features/place/states/saved_places_bloc/saved_places_bloc.dart';

class ListOfPlacesWidget extends StatelessWidget {
  final LatLng currentLocation;
  final List<PlaceModel> places;
  final SavedPlacesBloc savedPlacesBloc;
  const ListOfPlacesWidget({
    super.key,
    required this.places,
    required this.currentLocation,
    required this.savedPlacesBloc,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(places.length, (index) {
          return _singlePlace(context: context, place: places[index]);
        }),
      ),
    );
  }

  Widget _singlePlace(
      {required BuildContext context, required PlaceModel place}) {
    var distance = (place as PlaceWithDistanceModel).distance;
    return BlocBuilder<SavedPlacesBloc, SavedPlacesState>(
      builder: (context, state) {
        var isSaved = isPlaceSaved(place: PlaceModel.fromJson(place.toJson()), state: state);
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(width: 0.9))),
          child: Row(
            children: [
              SizedBox(
                height: 48,
                width: 48,
                child: Icon(
                  place.type == PlaceTypeEnum.hospital
                      ? Icons.local_hospital
                      : Icons.restaurant,
                  color: place.type == PlaceTypeEnum.hospital
                      ? Colors.pink
                      : Colors.purple,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 8,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        place.name,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      Text(
                        place.address,
                        style: Theme.of(context).textTheme.bodySmall,
                      )
                    ],
                  ),
                ),
              ),
              Text(
                "${(distance / 1000).toStringAsFixed(2)} KM",
              ),
              InkWell(
                onTap: () {
                  if (isSaved) {
                    return onDeletePlace(PlaceModel.fromJson(place.toJson()));
                  }
                  return onSavePlace(place);
                },
                child: SizedBox(
                  height: 48,
                  width: 48,
                  child:
                      Icon(isSaved ? Icons.bookmark : Icons.bookmark_outline),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  bool isPlaceSaved({
    required PlaceModel place,
    required SavedPlacesState state,
  }) {
    return state.maybeMap(
      loaded: (value) {
        return value.places.indexWhere((element) => element == place) > -1;
      },
      error: (value) {
        var places = value.places ?? [];
        return places.indexWhere((element) => element == place) > -1;
      },
      loading: (value) {
        var places = value.places ?? [];
        return places.indexWhere((element) => element == place) > -1;
      },
      orElse: () {
        return false;
      },
    );
  }

  void onSavePlace(PlaceModel place) {
    savedPlacesBloc.add(SavedPlacesEvent.addPlace(place));
    return;
  }
  void onDeletePlace(PlaceModel place) {
    savedPlacesBloc.add(SavedPlacesEvent.deletePlace(place));
    return;
  }
}
