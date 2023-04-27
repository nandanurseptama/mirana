// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_location_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DeviceLocationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCurrentLocation,
    required TResult Function(LatLng latLng) changeLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadCurrentLocation,
    TResult? Function(LatLng latLng)? changeLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCurrentLocation,
    TResult Function(LatLng latLng)? changeLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadCurrentLocation value) loadCurrentLocation,
    required TResult Function(_ChangeLocation value) changeLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadCurrentLocation value)? loadCurrentLocation,
    TResult? Function(_ChangeLocation value)? changeLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadCurrentLocation value)? loadCurrentLocation,
    TResult Function(_ChangeLocation value)? changeLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceLocationEventCopyWith<$Res> {
  factory $DeviceLocationEventCopyWith(
          DeviceLocationEvent value, $Res Function(DeviceLocationEvent) then) =
      _$DeviceLocationEventCopyWithImpl<$Res, DeviceLocationEvent>;
}

/// @nodoc
class _$DeviceLocationEventCopyWithImpl<$Res, $Val extends DeviceLocationEvent>
    implements $DeviceLocationEventCopyWith<$Res> {
  _$DeviceLocationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadCurrentLocationCopyWith<$Res> {
  factory _$$_LoadCurrentLocationCopyWith(_$_LoadCurrentLocation value,
          $Res Function(_$_LoadCurrentLocation) then) =
      __$$_LoadCurrentLocationCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadCurrentLocationCopyWithImpl<$Res>
    extends _$DeviceLocationEventCopyWithImpl<$Res, _$_LoadCurrentLocation>
    implements _$$_LoadCurrentLocationCopyWith<$Res> {
  __$$_LoadCurrentLocationCopyWithImpl(_$_LoadCurrentLocation _value,
      $Res Function(_$_LoadCurrentLocation) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadCurrentLocation implements _LoadCurrentLocation {
  const _$_LoadCurrentLocation();

  @override
  String toString() {
    return 'DeviceLocationEvent.loadCurrentLocation()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadCurrentLocation);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCurrentLocation,
    required TResult Function(LatLng latLng) changeLocation,
  }) {
    return loadCurrentLocation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadCurrentLocation,
    TResult? Function(LatLng latLng)? changeLocation,
  }) {
    return loadCurrentLocation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCurrentLocation,
    TResult Function(LatLng latLng)? changeLocation,
    required TResult orElse(),
  }) {
    if (loadCurrentLocation != null) {
      return loadCurrentLocation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadCurrentLocation value) loadCurrentLocation,
    required TResult Function(_ChangeLocation value) changeLocation,
  }) {
    return loadCurrentLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadCurrentLocation value)? loadCurrentLocation,
    TResult? Function(_ChangeLocation value)? changeLocation,
  }) {
    return loadCurrentLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadCurrentLocation value)? loadCurrentLocation,
    TResult Function(_ChangeLocation value)? changeLocation,
    required TResult orElse(),
  }) {
    if (loadCurrentLocation != null) {
      return loadCurrentLocation(this);
    }
    return orElse();
  }
}

abstract class _LoadCurrentLocation implements DeviceLocationEvent {
  const factory _LoadCurrentLocation() = _$_LoadCurrentLocation;
}

/// @nodoc
abstract class _$$_ChangeLocationCopyWith<$Res> {
  factory _$$_ChangeLocationCopyWith(
          _$_ChangeLocation value, $Res Function(_$_ChangeLocation) then) =
      __$$_ChangeLocationCopyWithImpl<$Res>;
  @useResult
  $Res call({LatLng latLng});
}

/// @nodoc
class __$$_ChangeLocationCopyWithImpl<$Res>
    extends _$DeviceLocationEventCopyWithImpl<$Res, _$_ChangeLocation>
    implements _$$_ChangeLocationCopyWith<$Res> {
  __$$_ChangeLocationCopyWithImpl(
      _$_ChangeLocation _value, $Res Function(_$_ChangeLocation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latLng = null,
  }) {
    return _then(_$_ChangeLocation(
      null == latLng
          ? _value.latLng
          : latLng // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ));
  }
}

/// @nodoc

class _$_ChangeLocation implements _ChangeLocation {
  const _$_ChangeLocation(this.latLng);

  @override
  final LatLng latLng;

  @override
  String toString() {
    return 'DeviceLocationEvent.changeLocation(latLng: $latLng)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeLocation &&
            (identical(other.latLng, latLng) || other.latLng == latLng));
  }

  @override
  int get hashCode => Object.hash(runtimeType, latLng);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeLocationCopyWith<_$_ChangeLocation> get copyWith =>
      __$$_ChangeLocationCopyWithImpl<_$_ChangeLocation>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCurrentLocation,
    required TResult Function(LatLng latLng) changeLocation,
  }) {
    return changeLocation(latLng);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadCurrentLocation,
    TResult? Function(LatLng latLng)? changeLocation,
  }) {
    return changeLocation?.call(latLng);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCurrentLocation,
    TResult Function(LatLng latLng)? changeLocation,
    required TResult orElse(),
  }) {
    if (changeLocation != null) {
      return changeLocation(latLng);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadCurrentLocation value) loadCurrentLocation,
    required TResult Function(_ChangeLocation value) changeLocation,
  }) {
    return changeLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadCurrentLocation value)? loadCurrentLocation,
    TResult? Function(_ChangeLocation value)? changeLocation,
  }) {
    return changeLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadCurrentLocation value)? loadCurrentLocation,
    TResult Function(_ChangeLocation value)? changeLocation,
    required TResult orElse(),
  }) {
    if (changeLocation != null) {
      return changeLocation(this);
    }
    return orElse();
  }
}

abstract class _ChangeLocation implements DeviceLocationEvent {
  const factory _ChangeLocation(final LatLng latLng) = _$_ChangeLocation;

  LatLng get latLng;
  @JsonKey(ignore: true)
  _$$_ChangeLocationCopyWith<_$_ChangeLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DeviceLocationState {
  LatLng? get location => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LatLng? location, bool isLoading) loading,
    required TResult Function(LatLng location, bool isLoading) loaded,
    required TResult Function(String error, LatLng? location, bool isLoading)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LatLng? location, bool isLoading)? loading,
    TResult? Function(LatLng location, bool isLoading)? loaded,
    TResult? Function(String error, LatLng? location, bool isLoading)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LatLng? location, bool isLoading)? loading,
    TResult Function(LatLng location, bool isLoading)? loaded,
    TResult Function(String error, LatLng? location, bool isLoading)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeviceLocationStateCopyWith<DeviceLocationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceLocationStateCopyWith<$Res> {
  factory $DeviceLocationStateCopyWith(
          DeviceLocationState value, $Res Function(DeviceLocationState) then) =
      _$DeviceLocationStateCopyWithImpl<$Res, DeviceLocationState>;
  @useResult
  $Res call({LatLng location, bool isLoading});
}

/// @nodoc
class _$DeviceLocationStateCopyWithImpl<$Res, $Val extends DeviceLocationState>
    implements $DeviceLocationStateCopyWith<$Res> {
  _$DeviceLocationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      location: null == location
          ? _value.location!
          : location // ignore: cast_nullable_to_non_nullable
              as LatLng,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res>
    implements $DeviceLocationStateCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LatLng? location, bool isLoading});
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$DeviceLocationStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = freezed,
    Object? isLoading = null,
  }) {
    return _then(_$_Loading(
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatLng?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading({this.location, this.isLoading = true});

  @override
  final LatLng? location;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'DeviceLocationState.loading(location: $location, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loading &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, location, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      __$$_LoadingCopyWithImpl<_$_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LatLng? location, bool isLoading) loading,
    required TResult Function(LatLng location, bool isLoading) loaded,
    required TResult Function(String error, LatLng? location, bool isLoading)
        error,
  }) {
    return loading(location, isLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LatLng? location, bool isLoading)? loading,
    TResult? Function(LatLng location, bool isLoading)? loaded,
    TResult? Function(String error, LatLng? location, bool isLoading)? error,
  }) {
    return loading?.call(location, isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LatLng? location, bool isLoading)? loading,
    TResult Function(LatLng location, bool isLoading)? loaded,
    TResult Function(String error, LatLng? location, bool isLoading)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(location, isLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements DeviceLocationState {
  const factory _Loading({final LatLng? location, final bool isLoading}) =
      _$_Loading;

  @override
  LatLng? get location;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res>
    implements $DeviceLocationStateCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LatLng location, bool isLoading});
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$DeviceLocationStateCopyWithImpl<$Res, _$_Loaded>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? isLoading = null,
  }) {
    return _then(_$_Loaded(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatLng,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded({required this.location, this.isLoading = false});

  @override
  final LatLng location;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'DeviceLocationState.loaded(location: $location, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, location, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LatLng? location, bool isLoading) loading,
    required TResult Function(LatLng location, bool isLoading) loaded,
    required TResult Function(String error, LatLng? location, bool isLoading)
        error,
  }) {
    return loaded(location, isLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LatLng? location, bool isLoading)? loading,
    TResult? Function(LatLng location, bool isLoading)? loaded,
    TResult? Function(String error, LatLng? location, bool isLoading)? error,
  }) {
    return loaded?.call(location, isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LatLng? location, bool isLoading)? loading,
    TResult Function(LatLng location, bool isLoading)? loaded,
    TResult Function(String error, LatLng? location, bool isLoading)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(location, isLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements DeviceLocationState {
  const factory _Loaded(
      {required final LatLng location, final bool isLoading}) = _$_Loaded;

  @override
  LatLng get location;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res>
    implements $DeviceLocationStateCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String error, LatLng? location, bool isLoading});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$DeviceLocationStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? location = freezed,
    Object? isLoading = null,
  }) {
    return _then(_$_Error(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatLng?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error({required this.error, this.location, this.isLoading = false});

  @override
  final String error;
  @override
  final LatLng? location;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'DeviceLocationState.error(error: $error, location: $location, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, location, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LatLng? location, bool isLoading) loading,
    required TResult Function(LatLng location, bool isLoading) loaded,
    required TResult Function(String error, LatLng? location, bool isLoading)
        error,
  }) {
    return error(this.error, location, isLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LatLng? location, bool isLoading)? loading,
    TResult? Function(LatLng location, bool isLoading)? loaded,
    TResult? Function(String error, LatLng? location, bool isLoading)? error,
  }) {
    return error?.call(this.error, location, isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LatLng? location, bool isLoading)? loading,
    TResult Function(LatLng location, bool isLoading)? loaded,
    TResult Function(String error, LatLng? location, bool isLoading)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, location, isLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements DeviceLocationState {
  const factory _Error(
      {required final String error,
      final LatLng? location,
      final bool isLoading}) = _$_Error;

  String get error;
  @override
  LatLng? get location;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}
