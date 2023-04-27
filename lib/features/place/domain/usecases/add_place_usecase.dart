import 'package:injectable/injectable.dart';
import 'package:mirana/cores/usecase/usecase.dart';
import 'package:mirana/features/place/data/models/place_model.dart';
import 'package:mirana/features/place/domain/places_repository.dart';

@lazySingleton
class AddPlaceUsecase extends Usecase<PlaceModel, void> {
  final PlacesRepository _placesRepository;

  AddPlaceUsecase(
      {required super.uuidGenerator,
      @preResolve required PlacesRepository placesRepository})
      : _placesRepository = placesRepository;
  @override
  Future<void> calling(PlaceModel params) {
    return _placesRepository.savePlace(place: params);
  }
}
