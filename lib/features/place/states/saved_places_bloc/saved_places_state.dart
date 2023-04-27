part of 'saved_places_bloc.dart';

@freezed
class SavedPlacesState with _$SavedPlacesState {
  const factory SavedPlacesState.loading({
    @Default(null) List<PlaceModel>? places,
    @Default(true) bool isLoading,
  }) = _Loading;

  const factory SavedPlacesState.loaded({
    required List<PlaceModel> places,
    @Default(false) bool isLoading,
  }) = _Loaded;

  const factory SavedPlacesState.error({
    required String error,
    @Default(null) List<PlaceModel>? places,
    @Default(false) bool isLoading,
  }) = _Error;
}
