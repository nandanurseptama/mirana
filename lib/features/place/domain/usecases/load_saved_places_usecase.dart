import 'package:injectable/injectable.dart';
import 'package:mirana/cores/usecase/usecase.dart';
import 'package:mirana/features/place/data/models/place_model.dart';
import 'package:mirana/features/place/domain/places_repository.dart';

@lazySingleton
class LoadSavedPlaceUsecase extends Usecase<NoUsecaseParams, List<PlaceModel>> {
  final PlacesRepository _placesRepository;

  LoadSavedPlaceUsecase(
      {required super.uuidGenerator,
      @preResolve required PlacesRepository placesRepository})
      : _placesRepository = placesRepository;
  @override
  Future<List<PlaceModel>> calling(NoUsecaseParams params) {
    return _placesRepository.loadSavedPlace();
  }
}
