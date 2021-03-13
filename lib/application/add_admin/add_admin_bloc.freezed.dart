// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'add_admin_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AddAdminStateTearOff {
  const _$AddAdminStateTearOff();

// ignore: unused_element
  _AddAdminState call(
      {Either<Failure, Name> name,
      Either<Failure, PhoneNumber> phoneNumber,
      Option<Failure> addSalespersonFailure,
      bool hasSubmitted,
      bool hasRequested}) {
    return _AddAdminState(
      name: name,
      phoneNumber: phoneNumber,
      addSalespersonFailure: addSalespersonFailure,
      hasSubmitted: hasSubmitted,
      hasRequested: hasRequested,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AddAdminState = _$AddAdminStateTearOff();

/// @nodoc
mixin _$AddAdminState {
  Either<Failure, Name> get name;
  Either<Failure, PhoneNumber> get phoneNumber;
  Option<Failure> get addSalespersonFailure;
  bool get hasSubmitted;
  bool get hasRequested;

  @JsonKey(ignore: true)
  $AddAdminStateCopyWith<AddAdminState> get copyWith;
}

/// @nodoc
abstract class $AddAdminStateCopyWith<$Res> {
  factory $AddAdminStateCopyWith(
          AddAdminState value, $Res Function(AddAdminState) then) =
      _$AddAdminStateCopyWithImpl<$Res>;
  $Res call(
      {Either<Failure, Name> name,
      Either<Failure, PhoneNumber> phoneNumber,
      Option<Failure> addSalespersonFailure,
      bool hasSubmitted,
      bool hasRequested});
}

/// @nodoc
class _$AddAdminStateCopyWithImpl<$Res>
    implements $AddAdminStateCopyWith<$Res> {
  _$AddAdminStateCopyWithImpl(this._value, this._then);

  final AddAdminState _value;
  // ignore: unused_field
  final $Res Function(AddAdminState) _then;

  @override
  $Res call({
    Object name = freezed,
    Object phoneNumber = freezed,
    Object addSalespersonFailure = freezed,
    Object hasSubmitted = freezed,
    Object hasRequested = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as Either<Failure, Name>,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber as Either<Failure, PhoneNumber>,
      addSalespersonFailure: addSalespersonFailure == freezed
          ? _value.addSalespersonFailure
          : addSalespersonFailure as Option<Failure>,
      hasSubmitted:
          hasSubmitted == freezed ? _value.hasSubmitted : hasSubmitted as bool,
      hasRequested:
          hasRequested == freezed ? _value.hasRequested : hasRequested as bool,
    ));
  }
}

/// @nodoc
abstract class _$AddAdminStateCopyWith<$Res>
    implements $AddAdminStateCopyWith<$Res> {
  factory _$AddAdminStateCopyWith(
          _AddAdminState value, $Res Function(_AddAdminState) then) =
      __$AddAdminStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Either<Failure, Name> name,
      Either<Failure, PhoneNumber> phoneNumber,
      Option<Failure> addSalespersonFailure,
      bool hasSubmitted,
      bool hasRequested});
}

/// @nodoc
class __$AddAdminStateCopyWithImpl<$Res>
    extends _$AddAdminStateCopyWithImpl<$Res>
    implements _$AddAdminStateCopyWith<$Res> {
  __$AddAdminStateCopyWithImpl(
      _AddAdminState _value, $Res Function(_AddAdminState) _then)
      : super(_value, (v) => _then(v as _AddAdminState));

  @override
  _AddAdminState get _value => super._value as _AddAdminState;

  @override
  $Res call({
    Object name = freezed,
    Object phoneNumber = freezed,
    Object addSalespersonFailure = freezed,
    Object hasSubmitted = freezed,
    Object hasRequested = freezed,
  }) {
    return _then(_AddAdminState(
      name: name == freezed ? _value.name : name as Either<Failure, Name>,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber as Either<Failure, PhoneNumber>,
      addSalespersonFailure: addSalespersonFailure == freezed
          ? _value.addSalespersonFailure
          : addSalespersonFailure as Option<Failure>,
      hasSubmitted:
          hasSubmitted == freezed ? _value.hasSubmitted : hasSubmitted as bool,
      hasRequested:
          hasRequested == freezed ? _value.hasRequested : hasRequested as bool,
    ));
  }
}

/// @nodoc
class _$_AddAdminState implements _AddAdminState {
  const _$_AddAdminState(
      {this.name,
      this.phoneNumber,
      this.addSalespersonFailure,
      this.hasSubmitted,
      this.hasRequested});

  @override
  final Either<Failure, Name> name;
  @override
  final Either<Failure, PhoneNumber> phoneNumber;
  @override
  final Option<Failure> addSalespersonFailure;
  @override
  final bool hasSubmitted;
  @override
  final bool hasRequested;

  @override
  String toString() {
    return 'AddAdminState(name: $name, phoneNumber: $phoneNumber, addSalespersonFailure: $addSalespersonFailure, hasSubmitted: $hasSubmitted, hasRequested: $hasRequested)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddAdminState &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.addSalespersonFailure, addSalespersonFailure) ||
                const DeepCollectionEquality().equals(
                    other.addSalespersonFailure, addSalespersonFailure)) &&
            (identical(other.hasSubmitted, hasSubmitted) ||
                const DeepCollectionEquality()
                    .equals(other.hasSubmitted, hasSubmitted)) &&
            (identical(other.hasRequested, hasRequested) ||
                const DeepCollectionEquality()
                    .equals(other.hasRequested, hasRequested)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(addSalespersonFailure) ^
      const DeepCollectionEquality().hash(hasSubmitted) ^
      const DeepCollectionEquality().hash(hasRequested);

  @JsonKey(ignore: true)
  @override
  _$AddAdminStateCopyWith<_AddAdminState> get copyWith =>
      __$AddAdminStateCopyWithImpl<_AddAdminState>(this, _$identity);
}

abstract class _AddAdminState implements AddAdminState {
  const factory _AddAdminState(
      {Either<Failure, Name> name,
      Either<Failure, PhoneNumber> phoneNumber,
      Option<Failure> addSalespersonFailure,
      bool hasSubmitted,
      bool hasRequested}) = _$_AddAdminState;

  @override
  Either<Failure, Name> get name;
  @override
  Either<Failure, PhoneNumber> get phoneNumber;
  @override
  Option<Failure> get addSalespersonFailure;
  @override
  bool get hasSubmitted;
  @override
  bool get hasRequested;
  @override
  @JsonKey(ignore: true)
  _$AddAdminStateCopyWith<_AddAdminState> get copyWith;
}
