import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mirana/features/place/data/models/place_model.dart';
import 'package:mirana/features/place/data/models/place_type_enum.dart';

/// Creates Places Repository
abstract class PlacesRepository {
  /// Find nearby places by place type and current location
  ///
  /// will return list of place model if success
  ///
  /// throw Failure if fail
  Future<List<PlaceWithDistanceModel>> findNearbyPlaces({
    required PlaceTypeEnum placeType,
    required LatLng location,
    String keyword = "",
  });

  /// save place to local storage
  ///
  /// throw Failure if fail
  Future<void> savePlace({required PlaceModel place});

  /// delete place from local storage
  ///
  /// throw Failure if fail
  Future<void> deletePlace({required PlaceModel place});

  /// load saved place
  ///
  /// throw Failure if fail
  ///
  /// return list of places if success
  Future<List<PlaceModel>> loadSavedPlace();
}
