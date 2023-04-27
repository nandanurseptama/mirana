part of 'device_location_bloc.dart';

@freezed
class DeviceLocationState with _$DeviceLocationState {
  const factory DeviceLocationState.loading({
    LatLng? location,
    @Default(true) bool isLoading
  }) = _Loading;

  const factory DeviceLocationState.loaded({
    required LatLng location,
    @Default(false) bool isLoading
  }) = _Loaded;

  const factory DeviceLocationState.error({
    required String error,
    LatLng? location,
    @Default(false) bool isLoading
  }) = _Error;
}
