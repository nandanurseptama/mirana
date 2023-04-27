part of 'near_by_places_bloc.dart';

@freezed
class NearByPlacesState with _$NearByPlacesState {
  const factory NearByPlacesState.loading({
    @Default(true) bool isLoading,
    List<PlaceModel>? places,
  }) = _Loading;

  const factory NearByPlacesState.loaded({
    @Default(false) bool isLoading,
    required List<PlaceModel> places,
  }) = _Loaded;

  const factory NearByPlacesState.error({
    required String error,
    @Default(false) bool isLoading,
    List<PlaceModel>? places,
  }) = _Error;
}
