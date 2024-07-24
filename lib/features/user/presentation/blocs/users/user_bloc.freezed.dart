// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUser,
    required TResult Function(String name) getUserByName,
    required TResult Function(String city) getUserByCity,
    required TResult Function(bool isAscending) sortUserData,
    required TResult Function(User user) addUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUser,
    TResult? Function(String name)? getUserByName,
    TResult? Function(String city)? getUserByCity,
    TResult? Function(bool isAscending)? sortUserData,
    TResult? Function(User user)? addUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUser,
    TResult Function(String name)? getUserByName,
    TResult Function(String city)? getUserByCity,
    TResult Function(bool isAscending)? sortUserData,
    TResult Function(User user)? addUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserEvent value) getUser,
    required TResult Function(_GetUserByNameEvent value) getUserByName,
    required TResult Function(_GetUserByCityEvent value) getUserByCity,
    required TResult Function(_SortUserDataEvent value) sortUserData,
    required TResult Function(_AddUserEvent value) addUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUserEvent value)? getUser,
    TResult? Function(_GetUserByNameEvent value)? getUserByName,
    TResult? Function(_GetUserByCityEvent value)? getUserByCity,
    TResult? Function(_SortUserDataEvent value)? sortUserData,
    TResult? Function(_AddUserEvent value)? addUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserEvent value)? getUser,
    TResult Function(_GetUserByNameEvent value)? getUserByName,
    TResult Function(_GetUserByCityEvent value)? getUserByCity,
    TResult Function(_SortUserDataEvent value)? sortUserData,
    TResult Function(_AddUserEvent value)? addUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res, UserEvent>;
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res, $Val extends UserEvent>
    implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetUserEventImplCopyWith<$Res> {
  factory _$$GetUserEventImplCopyWith(
          _$GetUserEventImpl value, $Res Function(_$GetUserEventImpl) then) =
      __$$GetUserEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetUserEventImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$GetUserEventImpl>
    implements _$$GetUserEventImplCopyWith<$Res> {
  __$$GetUserEventImplCopyWithImpl(
      _$GetUserEventImpl _value, $Res Function(_$GetUserEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetUserEventImpl with DiagnosticableTreeMixin implements _GetUserEvent {
  const _$GetUserEventImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserEvent.getUser()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'UserEvent.getUser'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetUserEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUser,
    required TResult Function(String name) getUserByName,
    required TResult Function(String city) getUserByCity,
    required TResult Function(bool isAscending) sortUserData,
    required TResult Function(User user) addUser,
  }) {
    return getUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUser,
    TResult? Function(String name)? getUserByName,
    TResult? Function(String city)? getUserByCity,
    TResult? Function(bool isAscending)? sortUserData,
    TResult? Function(User user)? addUser,
  }) {
    return getUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUser,
    TResult Function(String name)? getUserByName,
    TResult Function(String city)? getUserByCity,
    TResult Function(bool isAscending)? sortUserData,
    TResult Function(User user)? addUser,
    required TResult orElse(),
  }) {
    if (getUser != null) {
      return getUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserEvent value) getUser,
    required TResult Function(_GetUserByNameEvent value) getUserByName,
    required TResult Function(_GetUserByCityEvent value) getUserByCity,
    required TResult Function(_SortUserDataEvent value) sortUserData,
    required TResult Function(_AddUserEvent value) addUser,
  }) {
    return getUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUserEvent value)? getUser,
    TResult? Function(_GetUserByNameEvent value)? getUserByName,
    TResult? Function(_GetUserByCityEvent value)? getUserByCity,
    TResult? Function(_SortUserDataEvent value)? sortUserData,
    TResult? Function(_AddUserEvent value)? addUser,
  }) {
    return getUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserEvent value)? getUser,
    TResult Function(_GetUserByNameEvent value)? getUserByName,
    TResult Function(_GetUserByCityEvent value)? getUserByCity,
    TResult Function(_SortUserDataEvent value)? sortUserData,
    TResult Function(_AddUserEvent value)? addUser,
    required TResult orElse(),
  }) {
    if (getUser != null) {
      return getUser(this);
    }
    return orElse();
  }
}

abstract class _GetUserEvent implements UserEvent {
  const factory _GetUserEvent() = _$GetUserEventImpl;
}

/// @nodoc
abstract class _$$GetUserByNameEventImplCopyWith<$Res> {
  factory _$$GetUserByNameEventImplCopyWith(_$GetUserByNameEventImpl value,
          $Res Function(_$GetUserByNameEventImpl) then) =
      __$$GetUserByNameEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$GetUserByNameEventImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$GetUserByNameEventImpl>
    implements _$$GetUserByNameEventImplCopyWith<$Res> {
  __$$GetUserByNameEventImplCopyWithImpl(_$GetUserByNameEventImpl _value,
      $Res Function(_$GetUserByNameEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$GetUserByNameEventImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetUserByNameEventImpl
    with DiagnosticableTreeMixin
    implements _GetUserByNameEvent {
  const _$GetUserByNameEventImpl({required this.name});

  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserEvent.getUserByName(name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserEvent.getUserByName'))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserByNameEventImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUserByNameEventImplCopyWith<_$GetUserByNameEventImpl> get copyWith =>
      __$$GetUserByNameEventImplCopyWithImpl<_$GetUserByNameEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUser,
    required TResult Function(String name) getUserByName,
    required TResult Function(String city) getUserByCity,
    required TResult Function(bool isAscending) sortUserData,
    required TResult Function(User user) addUser,
  }) {
    return getUserByName(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUser,
    TResult? Function(String name)? getUserByName,
    TResult? Function(String city)? getUserByCity,
    TResult? Function(bool isAscending)? sortUserData,
    TResult? Function(User user)? addUser,
  }) {
    return getUserByName?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUser,
    TResult Function(String name)? getUserByName,
    TResult Function(String city)? getUserByCity,
    TResult Function(bool isAscending)? sortUserData,
    TResult Function(User user)? addUser,
    required TResult orElse(),
  }) {
    if (getUserByName != null) {
      return getUserByName(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserEvent value) getUser,
    required TResult Function(_GetUserByNameEvent value) getUserByName,
    required TResult Function(_GetUserByCityEvent value) getUserByCity,
    required TResult Function(_SortUserDataEvent value) sortUserData,
    required TResult Function(_AddUserEvent value) addUser,
  }) {
    return getUserByName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUserEvent value)? getUser,
    TResult? Function(_GetUserByNameEvent value)? getUserByName,
    TResult? Function(_GetUserByCityEvent value)? getUserByCity,
    TResult? Function(_SortUserDataEvent value)? sortUserData,
    TResult? Function(_AddUserEvent value)? addUser,
  }) {
    return getUserByName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserEvent value)? getUser,
    TResult Function(_GetUserByNameEvent value)? getUserByName,
    TResult Function(_GetUserByCityEvent value)? getUserByCity,
    TResult Function(_SortUserDataEvent value)? sortUserData,
    TResult Function(_AddUserEvent value)? addUser,
    required TResult orElse(),
  }) {
    if (getUserByName != null) {
      return getUserByName(this);
    }
    return orElse();
  }
}

abstract class _GetUserByNameEvent implements UserEvent {
  const factory _GetUserByNameEvent({required final String name}) =
      _$GetUserByNameEventImpl;

  String get name;
  @JsonKey(ignore: true)
  _$$GetUserByNameEventImplCopyWith<_$GetUserByNameEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetUserByCityEventImplCopyWith<$Res> {
  factory _$$GetUserByCityEventImplCopyWith(_$GetUserByCityEventImpl value,
          $Res Function(_$GetUserByCityEventImpl) then) =
      __$$GetUserByCityEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String city});
}

/// @nodoc
class __$$GetUserByCityEventImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$GetUserByCityEventImpl>
    implements _$$GetUserByCityEventImplCopyWith<$Res> {
  __$$GetUserByCityEventImplCopyWithImpl(_$GetUserByCityEventImpl _value,
      $Res Function(_$GetUserByCityEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = null,
  }) {
    return _then(_$GetUserByCityEventImpl(
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetUserByCityEventImpl
    with DiagnosticableTreeMixin
    implements _GetUserByCityEvent {
  const _$GetUserByCityEventImpl({required this.city});

  @override
  final String city;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserEvent.getUserByCity(city: $city)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserEvent.getUserByCity'))
      ..add(DiagnosticsProperty('city', city));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserByCityEventImpl &&
            (identical(other.city, city) || other.city == city));
  }

  @override
  int get hashCode => Object.hash(runtimeType, city);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUserByCityEventImplCopyWith<_$GetUserByCityEventImpl> get copyWith =>
      __$$GetUserByCityEventImplCopyWithImpl<_$GetUserByCityEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUser,
    required TResult Function(String name) getUserByName,
    required TResult Function(String city) getUserByCity,
    required TResult Function(bool isAscending) sortUserData,
    required TResult Function(User user) addUser,
  }) {
    return getUserByCity(city);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUser,
    TResult? Function(String name)? getUserByName,
    TResult? Function(String city)? getUserByCity,
    TResult? Function(bool isAscending)? sortUserData,
    TResult? Function(User user)? addUser,
  }) {
    return getUserByCity?.call(city);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUser,
    TResult Function(String name)? getUserByName,
    TResult Function(String city)? getUserByCity,
    TResult Function(bool isAscending)? sortUserData,
    TResult Function(User user)? addUser,
    required TResult orElse(),
  }) {
    if (getUserByCity != null) {
      return getUserByCity(city);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserEvent value) getUser,
    required TResult Function(_GetUserByNameEvent value) getUserByName,
    required TResult Function(_GetUserByCityEvent value) getUserByCity,
    required TResult Function(_SortUserDataEvent value) sortUserData,
    required TResult Function(_AddUserEvent value) addUser,
  }) {
    return getUserByCity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUserEvent value)? getUser,
    TResult? Function(_GetUserByNameEvent value)? getUserByName,
    TResult? Function(_GetUserByCityEvent value)? getUserByCity,
    TResult? Function(_SortUserDataEvent value)? sortUserData,
    TResult? Function(_AddUserEvent value)? addUser,
  }) {
    return getUserByCity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserEvent value)? getUser,
    TResult Function(_GetUserByNameEvent value)? getUserByName,
    TResult Function(_GetUserByCityEvent value)? getUserByCity,
    TResult Function(_SortUserDataEvent value)? sortUserData,
    TResult Function(_AddUserEvent value)? addUser,
    required TResult orElse(),
  }) {
    if (getUserByCity != null) {
      return getUserByCity(this);
    }
    return orElse();
  }
}

abstract class _GetUserByCityEvent implements UserEvent {
  const factory _GetUserByCityEvent({required final String city}) =
      _$GetUserByCityEventImpl;

  String get city;
  @JsonKey(ignore: true)
  _$$GetUserByCityEventImplCopyWith<_$GetUserByCityEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SortUserDataEventImplCopyWith<$Res> {
  factory _$$SortUserDataEventImplCopyWith(_$SortUserDataEventImpl value,
          $Res Function(_$SortUserDataEventImpl) then) =
      __$$SortUserDataEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isAscending});
}

/// @nodoc
class __$$SortUserDataEventImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$SortUserDataEventImpl>
    implements _$$SortUserDataEventImplCopyWith<$Res> {
  __$$SortUserDataEventImplCopyWithImpl(_$SortUserDataEventImpl _value,
      $Res Function(_$SortUserDataEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAscending = null,
  }) {
    return _then(_$SortUserDataEventImpl(
      isAscending: null == isAscending
          ? _value.isAscending
          : isAscending // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SortUserDataEventImpl
    with DiagnosticableTreeMixin
    implements _SortUserDataEvent {
  const _$SortUserDataEventImpl({required this.isAscending});

  @override
  final bool isAscending;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserEvent.sortUserData(isAscending: $isAscending)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserEvent.sortUserData'))
      ..add(DiagnosticsProperty('isAscending', isAscending));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SortUserDataEventImpl &&
            (identical(other.isAscending, isAscending) ||
                other.isAscending == isAscending));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isAscending);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SortUserDataEventImplCopyWith<_$SortUserDataEventImpl> get copyWith =>
      __$$SortUserDataEventImplCopyWithImpl<_$SortUserDataEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUser,
    required TResult Function(String name) getUserByName,
    required TResult Function(String city) getUserByCity,
    required TResult Function(bool isAscending) sortUserData,
    required TResult Function(User user) addUser,
  }) {
    return sortUserData(isAscending);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUser,
    TResult? Function(String name)? getUserByName,
    TResult? Function(String city)? getUserByCity,
    TResult? Function(bool isAscending)? sortUserData,
    TResult? Function(User user)? addUser,
  }) {
    return sortUserData?.call(isAscending);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUser,
    TResult Function(String name)? getUserByName,
    TResult Function(String city)? getUserByCity,
    TResult Function(bool isAscending)? sortUserData,
    TResult Function(User user)? addUser,
    required TResult orElse(),
  }) {
    if (sortUserData != null) {
      return sortUserData(isAscending);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserEvent value) getUser,
    required TResult Function(_GetUserByNameEvent value) getUserByName,
    required TResult Function(_GetUserByCityEvent value) getUserByCity,
    required TResult Function(_SortUserDataEvent value) sortUserData,
    required TResult Function(_AddUserEvent value) addUser,
  }) {
    return sortUserData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUserEvent value)? getUser,
    TResult? Function(_GetUserByNameEvent value)? getUserByName,
    TResult? Function(_GetUserByCityEvent value)? getUserByCity,
    TResult? Function(_SortUserDataEvent value)? sortUserData,
    TResult? Function(_AddUserEvent value)? addUser,
  }) {
    return sortUserData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserEvent value)? getUser,
    TResult Function(_GetUserByNameEvent value)? getUserByName,
    TResult Function(_GetUserByCityEvent value)? getUserByCity,
    TResult Function(_SortUserDataEvent value)? sortUserData,
    TResult Function(_AddUserEvent value)? addUser,
    required TResult orElse(),
  }) {
    if (sortUserData != null) {
      return sortUserData(this);
    }
    return orElse();
  }
}

abstract class _SortUserDataEvent implements UserEvent {
  const factory _SortUserDataEvent({required final bool isAscending}) =
      _$SortUserDataEventImpl;

  bool get isAscending;
  @JsonKey(ignore: true)
  _$$SortUserDataEventImplCopyWith<_$SortUserDataEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddUserEventImplCopyWith<$Res> {
  factory _$$AddUserEventImplCopyWith(
          _$AddUserEventImpl value, $Res Function(_$AddUserEventImpl) then) =
      __$$AddUserEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});
}

/// @nodoc
class __$$AddUserEventImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$AddUserEventImpl>
    implements _$$AddUserEventImplCopyWith<$Res> {
  __$$AddUserEventImplCopyWithImpl(
      _$AddUserEventImpl _value, $Res Function(_$AddUserEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$AddUserEventImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$AddUserEventImpl with DiagnosticableTreeMixin implements _AddUserEvent {
  const _$AddUserEventImpl({required this.user});

  @override
  final User user;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserEvent.addUser(user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserEvent.addUser'))
      ..add(DiagnosticsProperty('user', user));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddUserEventImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddUserEventImplCopyWith<_$AddUserEventImpl> get copyWith =>
      __$$AddUserEventImplCopyWithImpl<_$AddUserEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUser,
    required TResult Function(String name) getUserByName,
    required TResult Function(String city) getUserByCity,
    required TResult Function(bool isAscending) sortUserData,
    required TResult Function(User user) addUser,
  }) {
    return addUser(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUser,
    TResult? Function(String name)? getUserByName,
    TResult? Function(String city)? getUserByCity,
    TResult? Function(bool isAscending)? sortUserData,
    TResult? Function(User user)? addUser,
  }) {
    return addUser?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUser,
    TResult Function(String name)? getUserByName,
    TResult Function(String city)? getUserByCity,
    TResult Function(bool isAscending)? sortUserData,
    TResult Function(User user)? addUser,
    required TResult orElse(),
  }) {
    if (addUser != null) {
      return addUser(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserEvent value) getUser,
    required TResult Function(_GetUserByNameEvent value) getUserByName,
    required TResult Function(_GetUserByCityEvent value) getUserByCity,
    required TResult Function(_SortUserDataEvent value) sortUserData,
    required TResult Function(_AddUserEvent value) addUser,
  }) {
    return addUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUserEvent value)? getUser,
    TResult? Function(_GetUserByNameEvent value)? getUserByName,
    TResult? Function(_GetUserByCityEvent value)? getUserByCity,
    TResult? Function(_SortUserDataEvent value)? sortUserData,
    TResult? Function(_AddUserEvent value)? addUser,
  }) {
    return addUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserEvent value)? getUser,
    TResult Function(_GetUserByNameEvent value)? getUserByName,
    TResult Function(_GetUserByCityEvent value)? getUserByCity,
    TResult Function(_SortUserDataEvent value)? sortUserData,
    TResult Function(_AddUserEvent value)? addUser,
    required TResult orElse(),
  }) {
    if (addUser != null) {
      return addUser(this);
    }
    return orElse();
  }
}

abstract class _AddUserEvent implements UserEvent {
  const factory _AddUserEvent({required final User user}) = _$AddUserEventImpl;

  User get user;
  @JsonKey(ignore: true)
  _$$AddUserEventImplCopyWith<_$AddUserEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<User> users) loaded,
    required TResult Function(Failure failure) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<User> users)? loaded,
    TResult? Function(Failure failure)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<User> users)? loaded,
    TResult Function(Failure failure)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserInitialState value) initial,
    required TResult Function(UserLoadingState value) loading,
    required TResult Function(UserLoadedState value) loaded,
    required TResult Function(UserFailedState value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserInitialState value)? initial,
    TResult? Function(UserLoadingState value)? loading,
    TResult? Function(UserLoadedState value)? loaded,
    TResult? Function(UserFailedState value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserInitialState value)? initial,
    TResult Function(UserLoadingState value)? loading,
    TResult Function(UserLoadedState value)? loaded,
    TResult Function(UserFailedState value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UserInitialStateImplCopyWith<$Res> {
  factory _$$UserInitialStateImplCopyWith(_$UserInitialStateImpl value,
          $Res Function(_$UserInitialStateImpl) then) =
      __$$UserInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserInitialStateImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserInitialStateImpl>
    implements _$$UserInitialStateImplCopyWith<$Res> {
  __$$UserInitialStateImplCopyWithImpl(_$UserInitialStateImpl _value,
      $Res Function(_$UserInitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserInitialStateImpl
    with DiagnosticableTreeMixin
    implements UserInitialState {
  const _$UserInitialStateImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'UserState.initial'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<User> users) loaded,
    required TResult Function(Failure failure) failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<User> users)? loaded,
    TResult? Function(Failure failure)? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<User> users)? loaded,
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
    required TResult Function(UserInitialState value) initial,
    required TResult Function(UserLoadingState value) loading,
    required TResult Function(UserLoadedState value) loaded,
    required TResult Function(UserFailedState value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserInitialState value)? initial,
    TResult? Function(UserLoadingState value)? loading,
    TResult? Function(UserLoadedState value)? loaded,
    TResult? Function(UserFailedState value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserInitialState value)? initial,
    TResult Function(UserLoadingState value)? loading,
    TResult Function(UserLoadedState value)? loaded,
    TResult Function(UserFailedState value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class UserInitialState implements UserState {
  const factory UserInitialState() = _$UserInitialStateImpl;
}

/// @nodoc
abstract class _$$UserLoadingStateImplCopyWith<$Res> {
  factory _$$UserLoadingStateImplCopyWith(_$UserLoadingStateImpl value,
          $Res Function(_$UserLoadingStateImpl) then) =
      __$$UserLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserLoadingStateImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserLoadingStateImpl>
    implements _$$UserLoadingStateImplCopyWith<$Res> {
  __$$UserLoadingStateImplCopyWithImpl(_$UserLoadingStateImpl _value,
      $Res Function(_$UserLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserLoadingStateImpl
    with DiagnosticableTreeMixin
    implements UserLoadingState {
  const _$UserLoadingStateImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'UserState.loading'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<User> users) loaded,
    required TResult Function(Failure failure) failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<User> users)? loaded,
    TResult? Function(Failure failure)? failed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<User> users)? loaded,
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
    required TResult Function(UserInitialState value) initial,
    required TResult Function(UserLoadingState value) loading,
    required TResult Function(UserLoadedState value) loaded,
    required TResult Function(UserFailedState value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserInitialState value)? initial,
    TResult? Function(UserLoadingState value)? loading,
    TResult? Function(UserLoadedState value)? loaded,
    TResult? Function(UserFailedState value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserInitialState value)? initial,
    TResult Function(UserLoadingState value)? loading,
    TResult Function(UserLoadedState value)? loaded,
    TResult Function(UserFailedState value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class UserLoadingState implements UserState {
  const factory UserLoadingState() = _$UserLoadingStateImpl;
}

/// @nodoc
abstract class _$$UserLoadedStateImplCopyWith<$Res> {
  factory _$$UserLoadedStateImplCopyWith(_$UserLoadedStateImpl value,
          $Res Function(_$UserLoadedStateImpl) then) =
      __$$UserLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<User> users});
}

/// @nodoc
class __$$UserLoadedStateImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserLoadedStateImpl>
    implements _$$UserLoadedStateImplCopyWith<$Res> {
  __$$UserLoadedStateImplCopyWithImpl(
      _$UserLoadedStateImpl _value, $Res Function(_$UserLoadedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
  }) {
    return _then(_$UserLoadedStateImpl(
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ));
  }
}

/// @nodoc

class _$UserLoadedStateImpl
    with DiagnosticableTreeMixin
    implements UserLoadedState {
  const _$UserLoadedStateImpl({required final List<User> users})
      : _users = users;

  final List<User> _users;
  @override
  List<User> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserState.loaded(users: $users)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserState.loaded'))
      ..add(DiagnosticsProperty('users', users));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLoadedStateImpl &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_users));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLoadedStateImplCopyWith<_$UserLoadedStateImpl> get copyWith =>
      __$$UserLoadedStateImplCopyWithImpl<_$UserLoadedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<User> users) loaded,
    required TResult Function(Failure failure) failed,
  }) {
    return loaded(users);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<User> users)? loaded,
    TResult? Function(Failure failure)? failed,
  }) {
    return loaded?.call(users);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<User> users)? loaded,
    TResult Function(Failure failure)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(users);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserInitialState value) initial,
    required TResult Function(UserLoadingState value) loading,
    required TResult Function(UserLoadedState value) loaded,
    required TResult Function(UserFailedState value) failed,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserInitialState value)? initial,
    TResult? Function(UserLoadingState value)? loading,
    TResult? Function(UserLoadedState value)? loaded,
    TResult? Function(UserFailedState value)? failed,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserInitialState value)? initial,
    TResult Function(UserLoadingState value)? loading,
    TResult Function(UserLoadedState value)? loaded,
    TResult Function(UserFailedState value)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class UserLoadedState implements UserState {
  const factory UserLoadedState({required final List<User> users}) =
      _$UserLoadedStateImpl;

  List<User> get users;
  @JsonKey(ignore: true)
  _$$UserLoadedStateImplCopyWith<_$UserLoadedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserFailedStateImplCopyWith<$Res> {
  factory _$$UserFailedStateImplCopyWith(_$UserFailedStateImpl value,
          $Res Function(_$UserFailedStateImpl) then) =
      __$$UserFailedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$UserFailedStateImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserFailedStateImpl>
    implements _$$UserFailedStateImplCopyWith<$Res> {
  __$$UserFailedStateImplCopyWithImpl(
      _$UserFailedStateImpl _value, $Res Function(_$UserFailedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$UserFailedStateImpl(
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$UserFailedStateImpl
    with DiagnosticableTreeMixin
    implements UserFailedState {
  const _$UserFailedStateImpl({required this.failure});

  @override
  final Failure failure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserState.failed(failure: $failure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserState.failed'))
      ..add(DiagnosticsProperty('failure', failure));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserFailedStateImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserFailedStateImplCopyWith<_$UserFailedStateImpl> get copyWith =>
      __$$UserFailedStateImplCopyWithImpl<_$UserFailedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<User> users) loaded,
    required TResult Function(Failure failure) failed,
  }) {
    return failed(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<User> users)? loaded,
    TResult? Function(Failure failure)? failed,
  }) {
    return failed?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<User> users)? loaded,
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
    required TResult Function(UserInitialState value) initial,
    required TResult Function(UserLoadingState value) loading,
    required TResult Function(UserLoadedState value) loaded,
    required TResult Function(UserFailedState value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserInitialState value)? initial,
    TResult? Function(UserLoadingState value)? loading,
    TResult? Function(UserLoadedState value)? loaded,
    TResult? Function(UserFailedState value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserInitialState value)? initial,
    TResult Function(UserLoadingState value)? loading,
    TResult Function(UserLoadedState value)? loaded,
    TResult Function(UserFailedState value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class UserFailedState implements UserState {
  const factory UserFailedState({required final Failure failure}) =
      _$UserFailedStateImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$UserFailedStateImplCopyWith<_$UserFailedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
