import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mirana/cores/usecase/usecase.dart';
import 'package:mirana/features/place/data/models/place_model.dart';
import 'package:mirana/features/place/domain/usecases/add_place_usecase.dart';
import 'package:mirana/features/place/domain/usecases/delete_place_usecase.dart';
import 'package:mirana/features/place/domain/usecases/load_saved_places_usecase.dart';

part 'saved_places_event.dart';
part 'saved_places_state.dart';
part 'saved_places_bloc.freezed.dart';

@lazySingleton
class SavedPlacesBloc extends Bloc<SavedPlacesEvent, SavedPlacesState> {
  final DeletePlaceUsecase _deletePlaceUsecase;
  final AddPlaceUsecase _addPlaceUsecase;
  final LoadSavedPlaceUsecase _loadSavedPlaceUsecase;
  SavedPlacesBloc({
    @preResolve required DeletePlaceUsecase deletePlaceUsecase,
    @preResolve required AddPlaceUsecase addPlaceUsecase,
    @preResolve required LoadSavedPlaceUsecase loadSavedPlaceUsecase,
  })  : _deletePlaceUsecase = deletePlaceUsecase,
        _addPlaceUsecase = addPlaceUsecase,
        _loadSavedPlaceUsecase = loadSavedPlaceUsecase,
        super(const SavedPlacesState.loading()) {
    on<SavedPlacesEvent>(
      (event, emit) {
        return event.maybeMap<void>(
          loadSavedPlaces: (value) async {
            await _loadSavedPlaceEventListener(event: value, emit: emit);
            return;
          },
          addPlace: (value) async {
            await _addPlaceEventListener(event: value, emit: emit);
            return;
          },
          deletePlace: (value) async {
            await _deletePlaceEventListener(event: value, emit: emit);
            return;
          },
          orElse: () {
            return;
          },
        );
      },
    );
  }
  Future<void> _deletePlaceEventListener({
    required _DeletePlace event,
    required Emitter<SavedPlacesState> emit,
  }) async {
    emit(SavedPlacesState.loading(places: state.places));
    return _deletePlaceUsecase(event.place).then((result) {
      return result.when<void>(ok: (ok) {
        add(const SavedPlacesEvent.loadSavedPlaces());
        return;
      }, err: (err) {
        emit(SavedPlacesState.error(error: err.message, places: state.places));
        return;
      });
    });
  }

  Future<void> _addPlaceEventListener({
    required _AddPlace event,
    required Emitter<SavedPlacesState> emit,
  }) async {
    emit(SavedPlacesState.loading(places: state.places));
    return _addPlaceUsecase(event.place).then((result) {
      return result.when<void>(ok: (ok) {
        add(const SavedPlacesEvent.loadSavedPlaces());
        return;
      }, err: (err) {
        emit(SavedPlacesState.error(error: err.message, places: state.places));
        return;
      });
    });
  }

  Future<void> _loadSavedPlaceEventListener({
    required _LoadSavedPlaces event,
    required Emitter<SavedPlacesState> emit,
  }) async {
    emit(SavedPlacesState.loading(places: state.places));
    return _loadSavedPlaceUsecase(NoUsecaseParams()).then((result) {
      return result.when<void>(ok: (ok) {
        emit(SavedPlacesState.loaded(places: ok));
        return;
      }, err: (err) {
        emit(SavedPlacesState.error(error: err.message, places: state.places));
        return;
      });
    });
  }
}
