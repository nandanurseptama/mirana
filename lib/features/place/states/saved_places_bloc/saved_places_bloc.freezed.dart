// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'saved_places_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SavedPlacesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadSavedPlaces,
    required TResult Function(PlaceModel place) deletePlace,
    required TResult Function(PlaceModel place) addPlace,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadSavedPlaces,
    TResult? Function(PlaceModel place)? deletePlace,
    TResult? Function(PlaceModel place)? addPlace,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadSavedPlaces,
    TResult Function(PlaceModel place)? deletePlace,
    TResult Function(PlaceModel place)? addPlace,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadSavedPlaces value) loadSavedPlaces,
    required TResult Function(_DeletePlace value) deletePlace,
    required TResult Function(_AddPlace value) addPlace,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadSavedPlaces value)? loadSavedPlaces,
    TResult? Function(_DeletePlace value)? deletePlace,
    TResult? Function(_AddPlace value)? addPlace,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadSavedPlaces value)? loadSavedPlaces,
    TResult Function(_DeletePlace value)? deletePlace,
    TResult Function(_AddPlace value)? addPlace,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavedPlacesEventCopyWith<$Res> {
  factory $SavedPlacesEventCopyWith(
          SavedPlacesEvent value, $Res Function(SavedPlacesEvent) then) =
      _$SavedPlacesEventCopyWithImpl<$Res, SavedPlacesEvent>;
}

/// @nodoc
class _$SavedPlacesEventCopyWithImpl<$Res, $Val extends SavedPlacesEvent>
    implements $SavedPlacesEventCopyWith<$Res> {
  _$SavedPlacesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadSavedPlacesCopyWith<$Res> {
  factory _$$_LoadSavedPlacesCopyWith(
          _$_LoadSavedPlaces value, $Res Function(_$_LoadSavedPlaces) then) =
      __$$_LoadSavedPlacesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadSavedPlacesCopyWithImpl<$Res>
    extends _$SavedPlacesEventCopyWithImpl<$Res, _$_LoadSavedPlaces>
    implements _$$_LoadSavedPlacesCopyWith<$Res> {
  __$$_LoadSavedPlacesCopyWithImpl(
      _$_LoadSavedPlaces _value, $Res Function(_$_LoadSavedPlaces) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadSavedPlaces implements _LoadSavedPlaces {
  const _$_LoadSavedPlaces();

  @override
  String toString() {
    return 'SavedPlacesEvent.loadSavedPlaces()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadSavedPlaces);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadSavedPlaces,
    required TResult Function(PlaceModel place) deletePlace,
    required TResult Function(PlaceModel place) addPlace,
  }) {
    return loadSavedPlaces();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadSavedPlaces,
    TResult? Function(PlaceModel place)? deletePlace,
    TResult? Function(PlaceModel place)? addPlace,
  }) {
    return loadSavedPlaces?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadSavedPlaces,
    TResult Function(PlaceModel place)? deletePlace,
    TResult Function(PlaceModel place)? addPlace,
    required TResult orElse(),
  }) {
    if (loadSavedPlaces != null) {
      return loadSavedPlaces();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadSavedPlaces value) loadSavedPlaces,
    required TResult Function(_DeletePlace value) deletePlace,
    required TResult Function(_AddPlace value) addPlace,
  }) {
    return loadSavedPlaces(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadSavedPlaces value)? loadSavedPlaces,
    TResult? Function(_DeletePlace value)? deletePlace,
    TResult? Function(_AddPlace value)? addPlace,
  }) {
    return loadSavedPlaces?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadSavedPlaces value)? loadSavedPlaces,
    TResult Function(_DeletePlace value)? deletePlace,
    TResult Function(_AddPlace value)? addPlace,
    required TResult orElse(),
  }) {
    if (loadSavedPlaces != null) {
      return loadSavedPlaces(this);
    }
    return orElse();
  }
}

abstract class _LoadSavedPlaces implements SavedPlacesEvent {
  const factory _LoadSavedPlaces() = _$_LoadSavedPlaces;
}

/// @nodoc
abstract class _$$_DeletePlaceCopyWith<$Res> {
  factory _$$_DeletePlaceCopyWith(
          _$_DeletePlace value, $Res Function(_$_DeletePlace) then) =
      __$$_DeletePlaceCopyWithImpl<$Res>;
  @useResult
  $Res call({PlaceModel place});
}

/// @nodoc
class __$$_DeletePlaceCopyWithImpl<$Res>
    extends _$SavedPlacesEventCopyWithImpl<$Res, _$_DeletePlace>
    implements _$$_DeletePlaceCopyWith<$Res> {
  __$$_DeletePlaceCopyWithImpl(
      _$_DeletePlace _value, $Res Function(_$_DeletePlace) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? place = null,
  }) {
    return _then(_$_DeletePlace(
      null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as PlaceModel,
    ));
  }
}

/// @nodoc

class _$_DeletePlace implements _DeletePlace {
  const _$_DeletePlace(this.place);

  @override
  final PlaceModel place;

  @override
  String toString() {
    return 'SavedPlacesEvent.deletePlace(place: $place)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeletePlace &&
            (identical(other.place, place) || other.place == place));
  }

  @override
  int get hashCode => Object.hash(runtimeType, place);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeletePlaceCopyWith<_$_DeletePlace> get copyWith =>
      __$$_DeletePlaceCopyWithImpl<_$_DeletePlace>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadSavedPlaces,
    required TResult Function(PlaceModel place) deletePlace,
    required TResult Function(PlaceModel place) addPlace,
  }) {
    return deletePlace(place);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadSavedPlaces,
    TResult? Function(PlaceModel place)? deletePlace,
    TResult? Function(PlaceModel place)? addPlace,
  }) {
    return deletePlace?.call(place);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadSavedPlaces,
    TResult Function(PlaceModel place)? deletePlace,
    TResult Function(PlaceModel place)? addPlace,
    required TResult orElse(),
  }) {
    if (deletePlace != null) {
      return deletePlace(place);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadSavedPlaces value) loadSavedPlaces,
    required TResult Function(_DeletePlace value) deletePlace,
    required TResult Function(_AddPlace value) addPlace,
  }) {
    return deletePlace(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadSavedPlaces value)? loadSavedPlaces,
    TResult? Function(_DeletePlace value)? deletePlace,
    TResult? Function(_AddPlace value)? addPlace,
  }) {
    return deletePlace?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadSavedPlaces value)? loadSavedPlaces,
    TResult Function(_DeletePlace value)? deletePlace,
    TResult Function(_AddPlace value)? addPlace,
    required TResult orElse(),
  }) {
    if (deletePlace != null) {
      return deletePlace(this);
    }
    return orElse();
  }
}

abstract class _DeletePlace implements SavedPlacesEvent {
  const factory _DeletePlace(final PlaceModel place) = _$_DeletePlace;

  PlaceModel get place;
  @JsonKey(ignore: true)
  _$$_DeletePlaceCopyWith<_$_DeletePlace> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddPlaceCopyWith<$Res> {
  factory _$$_AddPlaceCopyWith(
          _$_AddPlace value, $Res Function(_$_AddPlace) then) =
      __$$_AddPlaceCopyWithImpl<$Res>;
  @useResult
  $Res call({PlaceModel place});
}

/// @nodoc
class __$$_AddPlaceCopyWithImpl<$Res>
    extends _$SavedPlacesEventCopyWithImpl<$Res, _$_AddPlace>
    implements _$$_AddPlaceCopyWith<$Res> {
  __$$_AddPlaceCopyWithImpl(
      _$_AddPlace _value, $Res Function(_$_AddPlace) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? place = null,
  }) {
    return _then(_$_AddPlace(
      null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as PlaceModel,
    ));
  }
}

/// @nodoc

class _$_AddPlace implements _AddPlace {
  const _$_AddPlace(this.place);

  @override
  final PlaceModel place;

  @override
  String toString() {
    return 'SavedPlacesEvent.addPlace(place: $place)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddPlace &&
            (identical(other.place, place) || other.place == place));
  }

  @override
  int get hashCode => Object.hash(runtimeType, place);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddPlaceCopyWith<_$_AddPlace> get copyWith =>
      __$$_AddPlaceCopyWithImpl<_$_AddPlace>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadSavedPlaces,
    required TResult Function(PlaceModel place) deletePlace,
    required TResult Function(PlaceModel place) addPlace,
  }) {
    return addPlace(place);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadSavedPlaces,
    TResult? Function(PlaceModel place)? deletePlace,
    TResult? Function(PlaceModel place)? addPlace,
  }) {
    return addPlace?.call(place);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadSavedPlaces,
    TResult Function(PlaceModel place)? deletePlace,
    TResult Function(PlaceModel place)? addPlace,
    required TResult orElse(),
  }) {
    if (addPlace != null) {
      return addPlace(place);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadSavedPlaces value) loadSavedPlaces,
    required TResult Function(_DeletePlace value) deletePlace,
    required TResult Function(_AddPlace value) addPlace,
  }) {
    return addPlace(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadSavedPlaces value)? loadSavedPlaces,
    TResult? Function(_DeletePlace value)? deletePlace,
    TResult? Function(_AddPlace value)? addPlace,
  }) {
    return addPlace?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadSavedPlaces value)? loadSavedPlaces,
    TResult Function(_DeletePlace value)? deletePlace,
    TResult Function(_AddPlace value)? addPlace,
    required TResult orElse(),
  }) {
    if (addPlace != null) {
      return addPlace(this);
    }
    return orElse();
  }
}

abstract class _AddPlace implements SavedPlacesEvent {
  const factory _AddPlace(final PlaceModel place) = _$_AddPlace;

  PlaceModel get place;
  @JsonKey(ignore: true)
  _$$_AddPlaceCopyWith<_$_AddPlace> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SavedPlacesState {
  List<PlaceModel>? get places => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PlaceModel>? places, bool isLoading) loading,
    required TResult Function(List<PlaceModel> places, bool isLoading) loaded,
    required TResult Function(
            String error, List<PlaceModel>? places, bool isLoading)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PlaceModel>? places, bool isLoading)? loading,
    TResult? Function(List<PlaceModel> places, bool isLoading)? loaded,
    TResult? Function(String error, List<PlaceModel>? places, bool isLoading)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PlaceModel>? places, bool isLoading)? loading,
    TResult Function(List<PlaceModel> places, bool isLoading)? loaded,
    TResult Function(String error, List<PlaceModel>? places, bool isLoading)?
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
  $SavedPlacesStateCopyWith<SavedPlacesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavedPlacesStateCopyWith<$Res> {
  factory $SavedPlacesStateCopyWith(
          SavedPlacesState value, $Res Function(SavedPlacesState) then) =
      _$SavedPlacesStateCopyWithImpl<$Res, SavedPlacesState>;
  @useResult
  $Res call({List<PlaceModel> places, bool isLoading});
}

/// @nodoc
class _$SavedPlacesStateCopyWithImpl<$Res, $Val extends SavedPlacesState>
    implements $SavedPlacesStateCopyWith<$Res> {
  _$SavedPlacesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? places = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      places: null == places
          ? _value.places!
          : places // ignore: cast_nullable_to_non_nullable
              as List<PlaceModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res>
    implements $SavedPlacesStateCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PlaceModel>? places, bool isLoading});
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$SavedPlacesStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? places = freezed,
    Object? isLoading = null,
  }) {
    return _then(_$_Loading(
      places: freezed == places
          ? _value._places
          : places // ignore: cast_nullable_to_non_nullable
              as List<PlaceModel>?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading(
      {final List<PlaceModel>? places = null, this.isLoading = true})
      : _places = places;

  final List<PlaceModel>? _places;
  @override
  @JsonKey()
  List<PlaceModel>? get places {
    final value = _places;
    if (value == null) return null;
    if (_places is EqualUnmodifiableListView) return _places;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'SavedPlacesState.loading(places: $places, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loading &&
            const DeepCollectionEquality().equals(other._places, _places) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_places), isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      __$$_LoadingCopyWithImpl<_$_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PlaceModel>? places, bool isLoading) loading,
    required TResult Function(List<PlaceModel> places, bool isLoading) loaded,
    required TResult Function(
            String error, List<PlaceModel>? places, bool isLoading)
        error,
  }) {
    return loading(places, isLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PlaceModel>? places, bool isLoading)? loading,
    TResult? Function(List<PlaceModel> places, bool isLoading)? loaded,
    TResult? Function(String error, List<PlaceModel>? places, bool isLoading)?
        error,
  }) {
    return loading?.call(places, isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PlaceModel>? places, bool isLoading)? loading,
    TResult Function(List<PlaceModel> places, bool isLoading)? loaded,
    TResult Function(String error, List<PlaceModel>? places, bool isLoading)?
        error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(places, isLoading);
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

abstract class _Loading implements SavedPlacesState {
  const factory _Loading(
      {final List<PlaceModel>? places, final bool isLoading}) = _$_Loading;

  @override
  List<PlaceModel>? get places;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res>
    implements $SavedPlacesStateCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PlaceModel> places, bool isLoading});
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$SavedPlacesStateCopyWithImpl<$Res, _$_Loaded>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? places = null,
    Object? isLoading = null,
  }) {
    return _then(_$_Loaded(
      places: null == places
          ? _value._places
          : places // ignore: cast_nullable_to_non_nullable
              as List<PlaceModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(
      {required final List<PlaceModel> places, this.isLoading = false})
      : _places = places;

  final List<PlaceModel> _places;
  @override
  List<PlaceModel> get places {
    if (_places is EqualUnmodifiableListView) return _places;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_places);
  }

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'SavedPlacesState.loaded(places: $places, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            const DeepCollectionEquality().equals(other._places, _places) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_places), isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PlaceModel>? places, bool isLoading) loading,
    required TResult Function(List<PlaceModel> places, bool isLoading) loaded,
    required TResult Function(
            String error, List<PlaceModel>? places, bool isLoading)
        error,
  }) {
    return loaded(places, isLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PlaceModel>? places, bool isLoading)? loading,
    TResult? Function(List<PlaceModel> places, bool isLoading)? loaded,
    TResult? Function(String error, List<PlaceModel>? places, bool isLoading)?
        error,
  }) {
    return loaded?.call(places, isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PlaceModel>? places, bool isLoading)? loading,
    TResult Function(List<PlaceModel> places, bool isLoading)? loaded,
    TResult Function(String error, List<PlaceModel>? places, bool isLoading)?
        error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(places, isLoading);
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

abstract class _Loaded implements SavedPlacesState {
  const factory _Loaded(
      {required final List<PlaceModel> places,
      final bool isLoading}) = _$_Loaded;

  @override
  List<PlaceModel> get places;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res>
    implements $SavedPlacesStateCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String error, List<PlaceModel>? places, bool isLoading});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$SavedPlacesStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? places = freezed,
    Object? isLoading = null,
  }) {
    return _then(_$_Error(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      places: freezed == places
          ? _value._places
          : places // ignore: cast_nullable_to_non_nullable
              as List<PlaceModel>?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(
      {required this.error,
      final List<PlaceModel>? places = null,
      this.isLoading = false})
      : _places = places;

  @override
  final String error;
  final List<PlaceModel>? _places;
  @override
  @JsonKey()
  List<PlaceModel>? get places {
    final value = _places;
    if (value == null) return null;
    if (_places is EqualUnmodifiableListView) return _places;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'SavedPlacesState.error(error: $error, places: $places, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality().equals(other._places, _places) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error,
      const DeepCollectionEquality().hash(_places), isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PlaceModel>? places, bool isLoading) loading,
    required TResult Function(List<PlaceModel> places, bool isLoading) loaded,
    required TResult Function(
            String error, List<PlaceModel>? places, bool isLoading)
        error,
  }) {
    return error(this.error, places, isLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PlaceModel>? places, bool isLoading)? loading,
    TResult? Function(List<PlaceModel> places, bool isLoading)? loaded,
    TResult? Function(String error, List<PlaceModel>? places, bool isLoading)?
        error,
  }) {
    return error?.call(this.error, places, isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PlaceModel>? places, bool isLoading)? loading,
    TResult Function(List<PlaceModel> places, bool isLoading)? loaded,
    TResult Function(String error, List<PlaceModel>? places, bool isLoading)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, places, isLoading);
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

abstract class _Error implements SavedPlacesState {
  const factory _Error(
      {required final String error,
      final List<PlaceModel>? places,
      final bool isLoading}) = _$_Error;

  String get error;
  @override
  List<PlaceModel>? get places;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}
