// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'near_by_places_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NearByPlacesEvent {
  PlaceTypeEnum get placeType => throw _privateConstructorUsedError;
  LatLng get location => throw _privateConstructorUsedError;
  String get keyword => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            PlaceTypeEnum placeType, LatLng location, String keyword)
        loadNearbyPlaces,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PlaceTypeEnum placeType, LatLng location, String keyword)?
        loadNearbyPlaces,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PlaceTypeEnum placeType, LatLng location, String keyword)?
        loadNearbyPlaces,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadNearbyPlaces value) loadNearbyPlaces,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadNearbyPlaces value)? loadNearbyPlaces,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadNearbyPlaces value)? loadNearbyPlaces,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NearByPlacesEventCopyWith<NearByPlacesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NearByPlacesEventCopyWith<$Res> {
  factory $NearByPlacesEventCopyWith(
          NearByPlacesEvent value, $Res Function(NearByPlacesEvent) then) =
      _$NearByPlacesEventCopyWithImpl<$Res, NearByPlacesEvent>;
  @useResult
  $Res call({PlaceTypeEnum placeType, LatLng location, String keyword});
}

/// @nodoc
class _$NearByPlacesEventCopyWithImpl<$Res, $Val extends NearByPlacesEvent>
    implements $NearByPlacesEventCopyWith<$Res> {
  _$NearByPlacesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeType = null,
    Object? location = null,
    Object? keyword = null,
  }) {
    return _then(_value.copyWith(
      placeType: null == placeType
          ? _value.placeType
          : placeType // ignore: cast_nullable_to_non_nullable
              as PlaceTypeEnum,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatLng,
      keyword: null == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoadNearbyPlacesCopyWith<$Res>
    implements $NearByPlacesEventCopyWith<$Res> {
  factory _$$_LoadNearbyPlacesCopyWith(
          _$_LoadNearbyPlaces value, $Res Function(_$_LoadNearbyPlaces) then) =
      __$$_LoadNearbyPlacesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PlaceTypeEnum placeType, LatLng location, String keyword});
}

/// @nodoc
class __$$_LoadNearbyPlacesCopyWithImpl<$Res>
    extends _$NearByPlacesEventCopyWithImpl<$Res, _$_LoadNearbyPlaces>
    implements _$$_LoadNearbyPlacesCopyWith<$Res> {
  __$$_LoadNearbyPlacesCopyWithImpl(
      _$_LoadNearbyPlaces _value, $Res Function(_$_LoadNearbyPlaces) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeType = null,
    Object? location = null,
    Object? keyword = null,
  }) {
    return _then(_$_LoadNearbyPlaces(
      placeType: null == placeType
          ? _value.placeType
          : placeType // ignore: cast_nullable_to_non_nullable
              as PlaceTypeEnum,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatLng,
      keyword: null == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoadNearbyPlaces implements _LoadNearbyPlaces {
  const _$_LoadNearbyPlaces(
      {this.placeType = PlaceTypeEnum.hospital,
      required this.location,
      this.keyword = ""});

  @override
  @JsonKey()
  final PlaceTypeEnum placeType;
  @override
  final LatLng location;
  @override
  @JsonKey()
  final String keyword;

  @override
  String toString() {
    return 'NearByPlacesEvent.loadNearbyPlaces(placeType: $placeType, location: $location, keyword: $keyword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadNearbyPlaces &&
            (identical(other.placeType, placeType) ||
                other.placeType == placeType) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.keyword, keyword) || other.keyword == keyword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, placeType, location, keyword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadNearbyPlacesCopyWith<_$_LoadNearbyPlaces> get copyWith =>
      __$$_LoadNearbyPlacesCopyWithImpl<_$_LoadNearbyPlaces>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            PlaceTypeEnum placeType, LatLng location, String keyword)
        loadNearbyPlaces,
  }) {
    return loadNearbyPlaces(placeType, location, keyword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PlaceTypeEnum placeType, LatLng location, String keyword)?
        loadNearbyPlaces,
  }) {
    return loadNearbyPlaces?.call(placeType, location, keyword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PlaceTypeEnum placeType, LatLng location, String keyword)?
        loadNearbyPlaces,
    required TResult orElse(),
  }) {
    if (loadNearbyPlaces != null) {
      return loadNearbyPlaces(placeType, location, keyword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadNearbyPlaces value) loadNearbyPlaces,
  }) {
    return loadNearbyPlaces(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadNearbyPlaces value)? loadNearbyPlaces,
  }) {
    return loadNearbyPlaces?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadNearbyPlaces value)? loadNearbyPlaces,
    required TResult orElse(),
  }) {
    if (loadNearbyPlaces != null) {
      return loadNearbyPlaces(this);
    }
    return orElse();
  }
}

abstract class _LoadNearbyPlaces implements NearByPlacesEvent {
  const factory _LoadNearbyPlaces(
      {final PlaceTypeEnum placeType,
      required final LatLng location,
      final String keyword}) = _$_LoadNearbyPlaces;

  @override
  PlaceTypeEnum get placeType;
  @override
  LatLng get location;
  @override
  String get keyword;
  @override
  @JsonKey(ignore: true)
  _$$_LoadNearbyPlacesCopyWith<_$_LoadNearbyPlaces> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NearByPlacesState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<PlaceModel>? get places => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, List<PlaceModel>? places) loading,
    required TResult Function(bool isLoading, List<PlaceModel> places) loaded,
    required TResult Function(
            String error, bool isLoading, List<PlaceModel>? places)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading, List<PlaceModel>? places)? loading,
    TResult? Function(bool isLoading, List<PlaceModel> places)? loaded,
    TResult? Function(String error, bool isLoading, List<PlaceModel>? places)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, List<PlaceModel>? places)? loading,
    TResult Function(bool isLoading, List<PlaceModel> places)? loaded,
    TResult Function(String error, bool isLoading, List<PlaceModel>? places)?
        error,
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
  $NearByPlacesStateCopyWith<NearByPlacesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NearByPlacesStateCopyWith<$Res> {
  factory $NearByPlacesStateCopyWith(
          NearByPlacesState value, $Res Function(NearByPlacesState) then) =
      _$NearByPlacesStateCopyWithImpl<$Res, NearByPlacesState>;
  @useResult
  $Res call({bool isLoading, List<PlaceModel> places});
}

/// @nodoc
class _$NearByPlacesStateCopyWithImpl<$Res, $Val extends NearByPlacesState>
    implements $NearByPlacesStateCopyWith<$Res> {
  _$NearByPlacesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? places = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      places: null == places
          ? _value.places!
          : places // ignore: cast_nullable_to_non_nullable
              as List<PlaceModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res>
    implements $NearByPlacesStateCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<PlaceModel>? places});
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$NearByPlacesStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? places = freezed,
  }) {
    return _then(_$_Loading(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      places: freezed == places
          ? _value._places
          : places // ignore: cast_nullable_to_non_nullable
              as List<PlaceModel>?,
    ));
  }
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading({this.isLoading = true, final List<PlaceModel>? places})
      : _places = places;

  @override
  @JsonKey()
  final bool isLoading;
  final List<PlaceModel>? _places;
  @override
  List<PlaceModel>? get places {
    final value = _places;
    if (value == null) return null;
    if (_places is EqualUnmodifiableListView) return _places;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'NearByPlacesState.loading(isLoading: $isLoading, places: $places)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loading &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._places, _places));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, const DeepCollectionEquality().hash(_places));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      __$$_LoadingCopyWithImpl<_$_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, List<PlaceModel>? places) loading,
    required TResult Function(bool isLoading, List<PlaceModel> places) loaded,
    required TResult Function(
            String error, bool isLoading, List<PlaceModel>? places)
        error,
  }) {
    return loading(isLoading, places);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading, List<PlaceModel>? places)? loading,
    TResult? Function(bool isLoading, List<PlaceModel> places)? loaded,
    TResult? Function(String error, bool isLoading, List<PlaceModel>? places)?
        error,
  }) {
    return loading?.call(isLoading, places);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, List<PlaceModel>? places)? loading,
    TResult Function(bool isLoading, List<PlaceModel> places)? loaded,
    TResult Function(String error, bool isLoading, List<PlaceModel>? places)?
        error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(isLoading, places);
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

abstract class _Loading implements NearByPlacesState {
  const factory _Loading(
      {final bool isLoading, final List<PlaceModel>? places}) = _$_Loading;

  @override
  bool get isLoading;
  @override
  List<PlaceModel>? get places;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res>
    implements $NearByPlacesStateCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<PlaceModel> places});
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$NearByPlacesStateCopyWithImpl<$Res, _$_Loaded>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? places = null,
  }) {
    return _then(_$_Loaded(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      places: null == places
          ? _value._places
          : places // ignore: cast_nullable_to_non_nullable
              as List<PlaceModel>,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(
      {this.isLoading = false, required final List<PlaceModel> places})
      : _places = places;

  @override
  @JsonKey()
  final bool isLoading;
  final List<PlaceModel> _places;
  @override
  List<PlaceModel> get places {
    if (_places is EqualUnmodifiableListView) return _places;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_places);
  }

  @override
  String toString() {
    return 'NearByPlacesState.loaded(isLoading: $isLoading, places: $places)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._places, _places));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, const DeepCollectionEquality().hash(_places));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, List<PlaceModel>? places) loading,
    required TResult Function(bool isLoading, List<PlaceModel> places) loaded,
    required TResult Function(
            String error, bool isLoading, List<PlaceModel>? places)
        error,
  }) {
    return loaded(isLoading, places);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading, List<PlaceModel>? places)? loading,
    TResult? Function(bool isLoading, List<PlaceModel> places)? loaded,
    TResult? Function(String error, bool isLoading, List<PlaceModel>? places)?
        error,
  }) {
    return loaded?.call(isLoading, places);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, List<PlaceModel>? places)? loading,
    TResult Function(bool isLoading, List<PlaceModel> places)? loaded,
    TResult Function(String error, bool isLoading, List<PlaceModel>? places)?
        error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(isLoading, places);
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

abstract class _Loaded implements NearByPlacesState {
  const factory _Loaded(
      {final bool isLoading,
      required final List<PlaceModel> places}) = _$_Loaded;

  @override
  bool get isLoading;
  @override
  List<PlaceModel> get places;
  @override
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res>
    implements $NearByPlacesStateCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String error, bool isLoading, List<PlaceModel>? places});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$NearByPlacesStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? isLoading = null,
    Object? places = freezed,
  }) {
    return _then(_$_Error(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      places: freezed == places
          ? _value._places
          : places // ignore: cast_nullable_to_non_nullable
              as List<PlaceModel>?,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(
      {required this.error,
      this.isLoading = false,
      final List<PlaceModel>? places})
      : _places = places;

  @override
  final String error;
  @override
  @JsonKey()
  final bool isLoading;
  final List<PlaceModel>? _places;
  @override
  List<PlaceModel>? get places {
    final value = _places;
    if (value == null) return null;
    if (_places is EqualUnmodifiableListView) return _places;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'NearByPlacesState.error(error: $error, isLoading: $isLoading, places: $places)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._places, _places));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, isLoading,
      const DeepCollectionEquality().hash(_places));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, List<PlaceModel>? places) loading,
    required TResult Function(bool isLoading, List<PlaceModel> places) loaded,
    required TResult Function(
            String error, bool isLoading, List<PlaceModel>? places)
        error,
  }) {
    return error(this.error, isLoading, places);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading, List<PlaceModel>? places)? loading,
    TResult? Function(bool isLoading, List<PlaceModel> places)? loaded,
    TResult? Function(String error, bool isLoading, List<PlaceModel>? places)?
        error,
  }) {
    return error?.call(this.error, isLoading, places);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, List<PlaceModel>? places)? loading,
    TResult Function(bool isLoading, List<PlaceModel> places)? loaded,
    TResult Function(String error, bool isLoading, List<PlaceModel>? places)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, isLoading, places);
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

abstract class _Error implements NearByPlacesState {
  const factory _Error(
      {required final String error,
      final bool isLoading,
      final List<PlaceModel>? places}) = _$_Error;

  String get error;
  @override
  bool get isLoading;
  @override
  List<PlaceModel>? get places;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}
