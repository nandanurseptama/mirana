import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:mirana/cores/usecase/usecase.dart';
import 'package:mirana/features/location/domain/get_current_device_location.dart';

part 'device_location_event.dart';
part 'device_location_state.dart';
part 'device_location_bloc.freezed.dart';

@lazySingleton
class DeviceLocationBloc
    extends Bloc<DeviceLocationEvent, DeviceLocationState> {
  final GetCurrentDeviceLocationUsecase _getCurrentDeviceLocationUsecase;
  DeviceLocationBloc({
    @preResolve
        required GetCurrentDeviceLocationUsecase
            getCurrentDeviceLocationUsecase,
  })  : _getCurrentDeviceLocationUsecase = getCurrentDeviceLocationUsecase,
        super(const DeviceLocationState.loading()) {
    on<DeviceLocationEvent>((event, emit) {
      return event.maybeMap<void>(
        loadCurrentLocation: (value) async {
          await _loadCurrentLocationEventListener(emit);
          return;
        },
        changeLocation: (value) {
          emit(DeviceLocationState.loaded(location: value.latLng));
          return;
        },
        orElse: () {
          return;
        },
      );
    });
  }

  Future<void> _loadCurrentLocationEventListener(
      Emitter<DeviceLocationState> emit) async {
    return _getCurrentDeviceLocationUsecase(NoUsecaseParams()).then((result) {
      return result.when<void>(ok: (ok) {
        return emit(DeviceLocationState.loaded(location: ok));
      }, err: (err) {
        return emit(DeviceLocationState.error(error: err.message));
      });
    });
  }
}
