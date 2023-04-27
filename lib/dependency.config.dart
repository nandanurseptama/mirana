// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:geolocator/geolocator.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i5;
import 'package:uuid/uuid.dart' as _i6;

import 'cores/location_service.dart' as _i4;
import 'cores/utils/uuid_generator.dart' as _i9;
import 'features/location/domain/get_current_device_location.dart' as _i13;
import 'features/location/states/bloc/device_location_bloc.dart' as _i17;
import 'features/place/data/places_repository_impl.dart' as _i8;
import 'features/place/domain/places_repository.dart' as _i7;
import 'features/place/domain/usecases/add_place_usecase.dart' as _i10;
import 'features/place/domain/usecases/delete_place_usecase.dart' as _i11;
import 'features/place/domain/usecases/find_nearby_places.dart' as _i12;
import 'features/place/domain/usecases/load_saved_places_usecase.dart' as _i14;
import 'features/place/states/near_by_places_bloc/near_by_places_bloc.dart'
    as _i15;
import 'features/place/states/saved_places_bloc/saved_places_bloc.dart' as _i16;
import 'register_module.dart' as _i18;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
Future<_i1.GetIt> $Init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final registerModule = _$RegisterModule();
  gh.factory<_i3.GeolocatorPlatform>(() => registerModule.locationService);
  gh.lazySingleton<_i4.LocationServices>(() => _i4.LocationServicesImpl(
      geolocatorPlatform: gh<_i3.GeolocatorPlatform>()));
  await gh.factoryAsync<_i5.SharedPreferences>(
    () => registerModule.localStorage,
    preResolve: true,
  );
  gh.factory<_i6.Uuid>(() => registerModule.uuid);
  gh.lazySingleton<_i7.PlacesRepository>(() =>
      _i8.PlacesRepositoryImpl(localStorage: gh<_i5.SharedPreferences>()));
  gh.factory<_i9.UUIDGenerator>(() => _i9.UUIDGenerator(uuid: gh<_i6.Uuid>()));
  gh.lazySingleton<_i10.AddPlaceUsecase>(() => _i10.AddPlaceUsecase(
        uuidGenerator: gh<_i9.UUIDGenerator>(),
        placesRepository: gh<_i7.PlacesRepository>(),
      ));
  gh.lazySingleton<_i11.DeletePlaceUsecase>(() => _i11.DeletePlaceUsecase(
        uuidGenerator: gh<_i9.UUIDGenerator>(),
        placesRepository: gh<_i7.PlacesRepository>(),
      ));
  gh.lazySingleton<_i12.FindNearbyPlaces>(() => _i12.FindNearbyPlaces(
        uuidGenerator: gh<_i9.UUIDGenerator>(),
        placesRepository: gh<_i7.PlacesRepository>(),
      ));
  gh.lazySingleton<_i13.GetCurrentDeviceLocationUsecase>(
      () => _i13.GetCurrentDeviceLocationUsecase(
            uuidGenerator: gh<_i9.UUIDGenerator>(),
            locationServices: gh<_i4.LocationServices>(),
          ));
  gh.lazySingleton<_i14.LoadSavedPlaceUsecase>(() => _i14.LoadSavedPlaceUsecase(
        uuidGenerator: gh<_i9.UUIDGenerator>(),
        placesRepository: gh<_i7.PlacesRepository>(),
      ));
  gh.lazySingleton<_i15.NearByPlacesBloc>(() =>
      _i15.NearByPlacesBloc(findNearbyPlaces: gh<_i12.FindNearbyPlaces>()));
  gh.lazySingleton<_i16.SavedPlacesBloc>(() => _i16.SavedPlacesBloc(
        deletePlaceUsecase: gh<_i11.DeletePlaceUsecase>(),
        addPlaceUsecase: gh<_i10.AddPlaceUsecase>(),
        loadSavedPlaceUsecase: gh<_i14.LoadSavedPlaceUsecase>(),
      ));
  gh.lazySingleton<_i17.DeviceLocationBloc>(() => _i17.DeviceLocationBloc(
      getCurrentDeviceLocationUsecase:
          gh<_i13.GetCurrentDeviceLocationUsecase>()));
  return getIt;
}

class _$RegisterModule extends _i18.RegisterModule {}
