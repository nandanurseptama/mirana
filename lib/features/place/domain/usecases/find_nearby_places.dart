import 'package:equatable/equatable.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:mirana/cores/usecase/usecase.dart';
import 'package:mirana/features/place/data/models/place_model.dart';
import 'package:mirana/features/place/data/models/place_type_enum.dart';
import 'package:mirana/features/place/domain/places_repository.dart';

@lazySingleton
class FindNearbyPlaces
    extends Usecase<FindNearbyPlacesParams, List<PlaceModel>> {
  final PlacesRepository _placesRepository;

  FindNearbyPlaces(
      {required super.uuidGenerator,
      @preResolve required PlacesRepository placesRepository})
      : _placesRepository = placesRepository;
  @override
  Future<List<PlaceModel>> calling(FindNearbyPlacesParams params) {
    return _placesRepository.findNearbyPlaces(
        placeType: params.placeType, location: params.location, keyword: params.keyword);
  }
}

class FindNearbyPlacesParams extends Equatable {
  final PlaceTypeEnum placeType;
  final LatLng location;
  final String keyword;

  const FindNearbyPlacesParams(
      {required this.placeType, required this.location, this.keyword = ""});

  @override
  List<Object?> get props => [
        placeType,
        location,
        keyword
      ];
}
