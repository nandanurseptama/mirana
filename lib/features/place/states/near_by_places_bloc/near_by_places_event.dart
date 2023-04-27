part of 'near_by_places_bloc.dart';

@freezed
class NearByPlacesEvent with _$NearByPlacesEvent {
  const factory NearByPlacesEvent.loadNearbyPlaces({
    @Default(PlaceTypeEnum.hospital) PlaceTypeEnum placeType,
    required LatLng location,
    @Default("") String keyword,
  }) = _LoadNearbyPlaces;
}
