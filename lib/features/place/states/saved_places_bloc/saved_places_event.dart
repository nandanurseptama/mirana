part of 'saved_places_bloc.dart';

@freezed
class SavedPlacesEvent with _$SavedPlacesEvent {
  const factory SavedPlacesEvent.loadSavedPlaces() = _LoadSavedPlaces;
  const factory SavedPlacesEvent.deletePlace(PlaceModel place) = _DeletePlace;
  const factory SavedPlacesEvent.addPlace(PlaceModel place) = _AddPlace;
}
