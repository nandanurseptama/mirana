part of 'device_location_bloc.dart';

@freezed
class DeviceLocationEvent with _$DeviceLocationEvent {
  const factory DeviceLocationEvent.loadCurrentLocation() =
      _LoadCurrentLocation;
  const factory DeviceLocationEvent.changeLocation(LatLng latLng) =
      _ChangeLocation;
}
