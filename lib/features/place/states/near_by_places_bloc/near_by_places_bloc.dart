import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:mirana/features/place/data/models/place_model.dart';
import 'package:mirana/features/place/data/models/place_type_enum.dart';
import 'package:mirana/features/place/domain/usecases/find_nearby_places.dart';

part 'near_by_places_event.dart';
part 'near_by_places_state.dart';
part 'near_by_places_bloc.freezed.dart';

@lazySingleton
class NearByPlacesBloc extends Bloc<NearByPlacesEvent, NearByPlacesState> {
  final FindNearbyPlaces _findNearbyPlaces;
  NearByPlacesBloc({@preResolve required FindNearbyPlaces findNearbyPlaces})
      : _findNearbyPlaces = findNearbyPlaces,
        super(const NearByPlacesState.loading()) {
    on<NearByPlacesEvent>((event, emit) {
      return event.maybeMap<void>(loadNearbyPlaces: (value) async {
        await _loadNearbyPlacesEventListener(emit: emit, event: value);
        return;
      }, orElse: () {
        return;
      });
    });
  }

  Future<void> _loadNearbyPlacesEventListener({
    required _LoadNearbyPlaces event,
    required Emitter<NearByPlacesState> emit,
  }) async {
    return _findNearbyPlaces(FindNearbyPlacesParams(
            placeType: event.placeType, location: event.location, keyword: event.keyword))
        .then((result) {
      return result.when<void>(ok: (ok) {
        return emit(NearByPlacesState.loaded(places: ok));
      }, err: (err) {
        return emit(
            NearByPlacesState.error(places: state.places, error: err.message));
      });
    });
  }
}
