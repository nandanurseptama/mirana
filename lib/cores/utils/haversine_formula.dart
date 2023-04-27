import 'dart:math';

import 'package:google_maps_flutter/google_maps_flutter.dart';
/// Count distance between two point with Haversine Formula 
/// 
/// Ref : https://en.wikipedia.org/wiki/Haversine_formula
/// 
/// return distance between two point in meter
double haversineFormula({
  required LatLng location,
  required LatLng location2,
}) {
  const double R = 6371000; // Earth radius in meters
  double deltaLat = (location.latitude - location2.latitude) * pi / 180.0;
  double deltaLong = (location.longitude - location2.longitude) * pi / 180.0;

  // convert to radians
  double latitude = (location.latitude) * pi / 180.0;
  double latitude2 = (location2.latitude) * pi / 180.0;

  // haversine
  double a = pow(sin(deltaLat / 2), 2) +
      pow(sin(deltaLong / 2), 2) * cos(latitude) * cos(latitude2);
  // calculate distance
  double c = 2 * asin(sqrt(a));

  // result in meter
  return R * c;
}
