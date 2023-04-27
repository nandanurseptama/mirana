import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:mirana/cores/location_service.dart';
import 'package:mirana/cores/usecase/failure.dart';
import 'package:mirana/cores/usecase/usecase.dart';

@lazySingleton
class GetCurrentDeviceLocationUsecase extends Usecase<NoUsecaseParams, LatLng> {
  final LocationServices _locationServices;
  GetCurrentDeviceLocationUsecase(
      {required super.uuidGenerator,
      @preResolve required LocationServices locationServices})
      : _locationServices = locationServices;

  @override
  Future<LatLng> calling(NoUsecaseParams params) async {
    await _locationServices.askPermission();
    var isGranted = await _locationServices.isPermissionGranted();
    if (!isGranted) {
      throw Failure(
          message: "Location permission not granted",
          trace: StackTrace.current);
    }
    var getDeviceLocationResult = await _locationServices.getDeviceLocation();
    return getDeviceLocationResult;
  }
}
