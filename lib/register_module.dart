import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

@module
abstract class RegisterModule {
  GeolocatorPlatform get locationService => GeolocatorPlatform.instance;
  Uuid get uuid => const Uuid();
  @preResolve
  Future<SharedPreferences> get localStorage => SharedPreferences.getInstance();
}
