import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:mirana/cores/usecase/failure.dart';

/// Creates Location Services
abstract class LocationServices {
  /// ask permission to access device location
  ///
  /// will throw exception if permission was denied
  Future<void> askPermission();

  /// check if permission to access device location is granted
  Future<bool> isPermissionGranted();

  /// get current device location in latitude and longitude
  Future<LatLng> getDeviceLocation();
}

@LazySingleton(as: LocationServices)
class LocationServicesImpl implements LocationServices {
  final GeolocatorPlatform _geolocatorPlatform;

  const LocationServicesImpl(
      {@preResolve required GeolocatorPlatform geolocatorPlatform})
      : _geolocatorPlatform = geolocatorPlatform;

  @override
  Future<void> askPermission() async {
    try {
      var permission = await _geolocatorPlatform.requestPermission();
      if (permission == LocationPermission.denied) {
        throw Failure(
            message: "Please grant location permission",
            trace: StackTrace.current);
      }
      if (permission == LocationPermission.unableToDetermine) {
        throw Failure(
            message:
                "Cannot determine location permission. Uninstall and install this app again",
            trace: StackTrace.current);
      }
      if (permission == LocationPermission.deniedForever) {
        throw Failure(
            message:
                "Location permission denied forever. Uninstall and install this app again",
            trace: StackTrace.current);
      }
      return;
    } catch (e, trace) {
      throw Failure(message: "Failed to ask location permission", trace: trace);
    }
  }

  @override
  Future<LatLng> getDeviceLocation() async {
    try {
      var position = await _geolocatorPlatform.getCurrentPosition(
          locationSettings: const LocationSettings(
        accuracy: LocationAccuracy.high,
        distanceFilter: 0,
      ));
      return LatLng(position.latitude, position.longitude);
    } catch (e, trace) {
      throw Failure(
          message: "Failed to get current device location", trace: trace);
    }
  }

  @override
  Future<bool> isPermissionGranted() async {
    try {
      var permission = await _geolocatorPlatform.checkPermission();
      return permission == LocationPermission.always ||
          permission == LocationPermission.whileInUse;
    } catch (e, trace) {
      throw Failure(
          message: "Failed to check location permission", trace: trace);
    }
  }
}
