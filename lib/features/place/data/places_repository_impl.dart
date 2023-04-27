import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:mirana/cores/usecase/failure.dart';
import 'package:mirana/cores/utils/haversine_formula.dart';
import 'package:mirana/features/place/data/models/place_type_enum.dart';
import 'package:mirana/features/place/data/models/place_model.dart';
import 'package:google_maps_flutter_platform_interface/src/types/location.dart';
import 'package:mirana/features/place/domain/places_repository.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: PlacesRepository)
class PlacesRepositoryImpl implements PlacesRepository {
  final SharedPreferences _localStorage;
  PlacesRepositoryImpl({@preResolve required SharedPreferences localStorage})
      : _localStorage = localStorage;
  @override
  Future<List<PlaceWithDistanceModel>> findNearbyPlaces(
      {required PlaceTypeEnum placeType,
      required LatLng location,
      String keyword = ""}) async {
    try {
      var reserveHospitalPlace = List<PlaceModel>.empty(growable: true);
      var reserveRestaurantPlace = List<PlaceModel>.empty(growable: true);
      if (placeType == PlaceTypeEnum.hospital) {
        reserveHospitalPlace = await _loadFromJson(
            path: "assets/jsons/rumahsakit.json",
            location: location,
            placeType: placeType,
            keyword: keyword);
        var sorted = sort(places: reserveHospitalPlace, location: location);
        return sorted.length < 10 ? sorted : sorted.sublist(0, 10);
      }
      if (placeType == PlaceTypeEnum.restaurant) {
        reserveRestaurantPlace = await _loadFromJson(
            path: "assets/jsons/restaurant.json",
            location: location,
            placeType: placeType,
            keyword: keyword);
        var sorted = sort(places: reserveRestaurantPlace, location: location);

        return sorted.length < 10 ? sorted : sorted.sublist(0, 10);
      }
      reserveHospitalPlace = await _loadFromJson(
          path: "assets/jsons/rumahsakit.json",
          location: location,
          placeType: PlaceTypeEnum.hospital,
          keyword: keyword);

      reserveRestaurantPlace = await _loadFromJson(
          path: "assets/jsons/restaurant.json",
          location: location,
          placeType: PlaceTypeEnum.restaurant,
          keyword: keyword);
      var concatted = [
        ...reserveHospitalPlace,
        ...reserveRestaurantPlace,
      ];
      var sorted = sort(places: concatted, location: location);
      return sorted.length < 10 ? sorted : sorted.sublist(0, 10);
    } catch (e, trace) {
      print(e.toString());
      throw Failure(message: "Failed to load nearby places", trace: trace);
    }
  }

  /// [path] is location of json
  ///
  /// [placeType] was placeType
  ///
  /// [keyword] used for filtered place name or place address
  ///
  /// [location] was current location
  Future<List<PlaceModel>> _loadFromJson({
    required String path,
    required LatLng location,
    required PlaceTypeEnum placeType,
    String keyword = "",
  }) async {
    var jsonsAssetsPath = path;
    var jsonString = await rootBundle.loadString(jsonsAssetsPath);
    var jsonResult = json.decode(jsonString);
    var places = (jsonResult['place'] as List)
        .map((e) =>
            PlaceModel.fromJson({...e, "type": placeType.title.toLowerCase()}))
        .where((element) {
      if (keyword.isEmpty) {
        return true;
      }
      return element.address.toLowerCase().contains(keyword.toLowerCase()) ||
          element.name.toLowerCase().contains(keyword.toLowerCase());
    }).toList();

    return places;
  }

  List<PlaceWithDistanceModel> sort(
      {required List<PlaceModel> places, required LatLng location}) {
    var sortedPlaces = places
        .map((e) => e.withDistance(haversineFormula(
              location: location,
              location2: e.position,
            )))
        .toList()
      ..sort((a, b) {
        return a.distance.compareTo(b.distance);
      });

    return sortedPlaces;
  }

  @override
  Future<void> deletePlace({required PlaceModel place}) async {
    try {
      var r = await loadSavedPlace();
      var indexWhere = r.indexWhere((element) => element == place);
      if (indexWhere < 0) {
        throw Failure(
            message: "Place not found. Failed to delete place",
            trace: StackTrace.current);
      }
      var filtered = r.where((element) => element != place);
      var jsonList = filtered.map((e) => e.toJson()).toList();
      var jsonString = jsonList.map((e) => jsonEncode(e)).toList();
      await _localStorage.setStringList("places", jsonString);
      return;
    } on Failure{
      rethrow;
    }
    catch (e, trace) {
      throw Failure(
          message: "Failed to delete place fom local storage", trace: trace);
    }
  }

  @override
  Future<List<PlaceModel>> loadSavedPlace() async {
    try {
      var placesString = _localStorage.getStringList("places") ?? [];
      if (placesString.isEmpty) {
        return List<PlaceModel>.empty(growable: true);
      }
      var jsonList = placesString.map((e) => jsonDecode(e)).toList();
      var placesList = jsonList.map((e) => PlaceModel.fromJson(e)).toList();
      return placesList;
    } catch (e, trace) {
      throw Failure(message: "Failed to load saved place", trace: trace);
    }
  }

  @override
  Future<void> savePlace({required PlaceModel place}) async {
    try {
      var s = PlaceModel.fromJson(place.toJson());
      var r = await loadSavedPlace();
      var indexWhere = r.indexWhere((element) => element == s);
      if (indexWhere > -1) {
        throw Failure(
            message: "Place already saved", trace: StackTrace.current);
      }
      r.add(place);
      var jsonList = r.map((e) => e.toJson()).toList();
      var jsonString = jsonList.map((e) => jsonEncode(e)).toList();
      await _localStorage.setStringList("places", jsonString);
      return;
    } on Failure{
      rethrow;
    }
    catch (e, trace) {
      throw Failure(message: "Failed to save place", trace: trace);
    }
  }
}
