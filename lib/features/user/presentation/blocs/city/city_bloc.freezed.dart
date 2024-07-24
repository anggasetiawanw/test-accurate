// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'city_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CityEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCityEvent value) getCity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCityEvent value)? getCity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCityEvent value)? getCity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityEventCopyWith<$Res> {
  factory $CityEventCopyWith(CityEvent value, $Res Function(CityEvent) then) =
      _$CityEventCopyWithImpl<$Res, CityEvent>;
}

/// @nodoc
class _$CityEventCopyWithImpl<$Res, $Val extends CityEvent>
    implements $CityEventCopyWith<$Res> {
  _$CityEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetCityEventImplCopyWith<$Res> {
  factory _$$GetCityEventImplCopyWith(
          _$GetCityEventImpl value, $Res Function(_$GetCityEventImpl) then) =
      __$$GetCityEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCityEventImplCopyWithImpl<$Res>
    extends _$CityEventCopyWithImpl<$Res, _$GetCityEventImpl>
    implements _$$GetCityEventImplCopyWith<$Res> {
  __$$GetCityEventImplCopyWithImpl(
      _$GetCityEventImpl _value, $Res Function(_$GetCityEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetCityEventImpl implements _GetCityEvent {
  const _$GetCityEventImpl();

  @override
  String toString() {
    return 'CityEvent.getCity()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCityEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCity,
  }) {
    return getCity();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCity,
  }) {
    return getCity?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCity,
    required TResult orElse(),
  }) {
    if (getCity != null) {
      return getCity();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCityEvent value) getCity,
  }) {
    return getCity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCityEvent value)? getCity,
  }) {
    return getCity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCityEvent value)? getCity,
    required TResult orElse(),
  }) {
    if (getCity != null) {
      return getCity(this);
    }
    return orElse();
  }
}

abstract class _GetCityEvent implements CityEvent {
  const factory _GetCityEvent() = _$GetCityEventImpl;
}

/// @nodoc
mixin _$CityState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<City> cities) loaded,
    required TResult Function(Failure failure) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<City> cities)? loaded,
    TResult? Function(Failure failure)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<City> cities)? loaded,
    TResult Function(Failure failure)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CityInitialState value) initial,
    required TResult Function(CityLoadingState value) loading,
    required TResult Function(CityLoadedState value) loaded,
    required TResult Function(CityFailureState value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CityInitialState value)? initial,
    TResult? Function(CityLoadingState value)? loading,
    TResult? Function(CityLoadedState value)? loaded,
    TResult? Function(CityFailureState value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CityInitialState value)? initial,
    TResult Function(CityLoadingState value)? loading,
    TResult Function(CityLoadedState value)? loaded,
    TResult Function(CityFailureState value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityStateCopyWith<$Res> {
  factory $CityStateCopyWith(CityState value, $Res Function(CityState) then) =
      _$CityStateCopyWithImpl<$Res, CityState>;
}

/// @nodoc
class _$CityStateCopyWithImpl<$Res, $Val extends CityState>
    implements $CityStateCopyWith<$Res> {
  _$CityStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CityInitialStateImplCopyWith<$Res> {
  factory _$$CityInitialStateImplCopyWith(_$CityInitialStateImpl value,
          $Res Function(_$CityInitialStateImpl) then) =
      __$$CityInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CityInitialStateImplCopyWithImpl<$Res>
    extends _$CityStateCopyWithImpl<$Res, _$CityInitialStateImpl>
    implements _$$CityInitialStateImplCopyWith<$Res> {
  __$$CityInitialStateImplCopyWithImpl(_$CityInitialStateImpl _value,
      $Res Function(_$CityInitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CityInitialStateImpl implements CityInitialState {
  const _$CityInitialStateImpl();

  @override
  String toString() {
    return 'CityState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CityInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<City> cities) loaded,
    required TResult Function(Failure failure) failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<City> cities)? loaded,
    TResult? Function(Failure failure)? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<City> cities)? loaded,
    TResult Function(Failure failure)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CityInitialState value) initial,
    required TResult Function(CityLoadingState value) loading,
    required TResult Function(CityLoadedState value) loaded,
    required TResult Function(CityFailureState value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CityInitialState value)? initial,
    TResult? Function(CityLoadingState value)? loading,
    TResult? Function(CityLoadedState value)? loaded,
    TResult? Function(CityFailureState value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CityInitialState value)? initial,
    TResult Function(CityLoadingState value)? loading,
    TResult Function(CityLoadedState value)? loaded,
    TResult Function(CityFailureState value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CityInitialState implements CityState {
  const factory CityInitialState() = _$CityInitialStateImpl;
}

/// @nodoc
abstract class _$$CityLoadingStateImplCopyWith<$Res> {
  factory _$$CityLoadingStateImplCopyWith(_$CityLoadingStateImpl value,
          $Res Function(_$CityLoadingStateImpl) then) =
      __$$CityLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CityLoadingStateImplCopyWithImpl<$Res>
    extends _$CityStateCopyWithImpl<$Res, _$CityLoadingStateImpl>
    implements _$$CityLoadingStateImplCopyWith<$Res> {
  __$$CityLoadingStateImplCopyWithImpl(_$CityLoadingStateImpl _value,
      $Res Function(_$CityLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CityLoadingStateImpl implements CityLoadingState {
  const _$CityLoadingStateImpl();

  @override
  String toString() {
    return 'CityState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CityLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<City> cities) loaded,
    required TResult Function(Failure failure) failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<City> cities)? loaded,
    TResult? Function(Failure failure)? failed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<City> cities)? loaded,
    TResult Function(Failure failure)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CityInitialState value) initial,
    required TResult Function(CityLoadingState value) loading,
    required TResult Function(CityLoadedState value) loaded,
    required TResult Function(CityFailureState value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CityInitialState value)? initial,
    TResult? Function(CityLoadingState value)? loading,
    TResult? Function(CityLoadedState value)? loaded,
    TResult? Function(CityFailureState value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CityInitialState value)? initial,
    TResult Function(CityLoadingState value)? loading,
    TResult Function(CityLoadedState value)? loaded,
    TResult Function(CityFailureState value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CityLoadingState implements CityState {
  const factory CityLoadingState() = _$CityLoadingStateImpl;
}

/// @nodoc
abstract class _$$CityLoadedStateImplCopyWith<$Res> {
  factory _$$CityLoadedStateImplCopyWith(_$CityLoadedStateImpl value,
          $Res Function(_$CityLoadedStateImpl) then) =
      __$$CityLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<City> cities});
}

/// @nodoc
class __$$CityLoadedStateImplCopyWithImpl<$Res>
    extends _$CityStateCopyWithImpl<$Res, _$CityLoadedStateImpl>
    implements _$$CityLoadedStateImplCopyWith<$Res> {
  __$$CityLoadedStateImplCopyWithImpl(
      _$CityLoadedStateImpl _value, $Res Function(_$CityLoadedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cities = null,
  }) {
    return _then(_$CityLoadedStateImpl(
      cities: null == cities
          ? _value._cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<City>,
    ));
  }
}

/// @nodoc

class _$CityLoadedStateImpl implements CityLoadedState {
  const _$CityLoadedStateImpl({required final List<City> cities})
      : _cities = cities;

  final List<City> _cities;
  @override
  List<City> get cities {
    if (_cities is EqualUnmodifiableListView) return _cities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cities);
  }

  @override
  String toString() {
    return 'CityState.loaded(cities: $cities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CityLoadedStateImpl &&
            const DeepCollectionEquality().equals(other._cities, _cities));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cities));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CityLoadedStateImplCopyWith<_$CityLoadedStateImpl> get copyWith =>
      __$$CityLoadedStateImplCopyWithImpl<_$CityLoadedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<City> cities) loaded,
    required TResult Function(Failure failure) failed,
  }) {
    return loaded(cities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<City> cities)? loaded,
    TResult? Function(Failure failure)? failed,
  }) {
    return loaded?.call(cities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<City> cities)? loaded,
    TResult Function(Failure failure)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(cities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CityInitialState value) initial,
    required TResult Function(CityLoadingState value) loading,
    required TResult Function(CityLoadedState value) loaded,
    required TResult Function(CityFailureState value) failed,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CityInitialState value)? initial,
    TResult? Function(CityLoadingState value)? loading,
    TResult? Function(CityLoadedState value)? loaded,
    TResult? Function(CityFailureState value)? failed,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CityInitialState value)? initial,
    TResult Function(CityLoadingState value)? loading,
    TResult Function(CityLoadedState value)? loaded,
    TResult Function(CityFailureState value)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class CityLoadedState implements CityState {
  const factory CityLoadedState({required final List<City> cities}) =
      _$CityLoadedStateImpl;

  List<City> get cities;
  @JsonKey(ignore: true)
  _$$CityLoadedStateImplCopyWith<_$CityLoadedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CityFailureStateImplCopyWith<$Res> {
  factory _$$CityFailureStateImplCopyWith(_$CityFailureStateImpl value,
          $Res Function(_$CityFailureStateImpl) then) =
      __$$CityFailureStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$CityFailureStateImplCopyWithImpl<$Res>
    extends _$CityStateCopyWithImpl<$Res, _$CityFailureStateImpl>
    implements _$$CityFailureStateImplCopyWith<$Res> {
  __$$CityFailureStateImplCopyWithImpl(_$CityFailureStateImpl _value,
      $Res Function(_$CityFailureStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$CityFailureStateImpl(
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$CityFailureStateImpl implements CityFailureState {
  const _$CityFailureStateImpl({required this.failure});

  @override
  final Failure failure;

  @override
  String toString() {
    return 'CityState.failed(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CityFailureStateImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CityFailureStateImplCopyWith<_$CityFailureStateImpl> get copyWith =>
      __$$CityFailureStateImplCopyWithImpl<_$CityFailureStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<City> cities) loaded,
    required TResult Function(Failure failure) failed,
  }) {
    return failed(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<City> cities)? loaded,
    TResult? Function(Failure failure)? failed,
  }) {
    return failed?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<City> cities)? loaded,
    TResult Function(Failure failure)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CityInitialState value) initial,
    required TResult Function(CityLoadingState value) loading,
    required TResult Function(CityLoadedState value) loaded,
    required TResult Function(CityFailureState value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CityInitialState value)? initial,
    TResult? Function(CityLoadingState value)? loading,
    TResult? Function(CityLoadedState value)? loaded,
    TResult? Function(CityFailureState value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CityInitialState value)? initial,
    TResult Function(CityLoadingState value)? loading,
    TResult Function(CityLoadedState value)? loaded,
    TResult Function(CityFailureState value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class CityFailureState implements CityState {
  const factory CityFailureState({required final Failure failure}) =
      _$CityFailureStateImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$CityFailureStateImplCopyWith<_$CityFailureStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
