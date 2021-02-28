// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'add_salesperson_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AddSalespersonStateTearOff {
  const _$AddSalespersonStateTearOff();

// ignore: unused_element
  _AddSalespersonState call(
      {Either<Failure, Name> name,
      Either<Failure, PhoneNumber> phoneNumber,
      Failure addSalespersonFailure,
      bool hasSubmitted,
      bool hasRequested,
      bool requestCompleted}) {
    return _AddSalespersonState(
      name: name,
      phoneNumber: phoneNumber,
      addSalespersonFailure: addSalespersonFailure,
      hasSubmitted: hasSubmitted,
      hasRequested: hasRequested,
      requestCompleted: requestCompleted,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AddSalespersonState = _$AddSalespersonStateTearOff();

/// @nodoc
mixin _$AddSalespersonState {
  Either<Failure, Name> get name;
  Either<Failure, PhoneNumber> get phoneNumber;
  Failure get addSalespersonFailure;
  bool get hasSubmitted;
  bool get hasRequested;
  bool get requestCompleted;

  @JsonKey(ignore: true)
  $AddSalespersonStateCopyWith<AddSalespersonState> get copyWith;
}

/// @nodoc
abstract class $AddSalespersonStateCopyWith<$Res> {
  factory $AddSalespersonStateCopyWith(
          AddSalespersonState value, $Res Function(AddSalespersonState) then) =
      _$AddSalespersonStateCopyWithImpl<$Res>;
  $Res call(
      {Either<Failure, Name> name,
      Either<Failure, PhoneNumber> phoneNumber,
      Failure addSalespersonFailure,
      bool hasSubmitted,
      bool hasRequested,
      bool requestCompleted});
}

/// @nodoc
class _$AddSalespersonStateCopyWithImpl<$Res>
    implements $AddSalespersonStateCopyWith<$Res> {
  _$AddSalespersonStateCopyWithImpl(this._value, this._then);

  final AddSalespersonState _value;
  // ignore: unused_field
  final $Res Function(AddSalespersonState) _then;

  @override
  $Res call({
    Object name = freezed,
    Object phoneNumber = freezed,
    Object addSalespersonFailure = freezed,
    Object hasSubmitted = freezed,
    Object hasRequested = freezed,
    Object requestCompleted = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as Either<Failure, Name>,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber as Either<Failure, PhoneNumber>,
      addSalespersonFailure: addSalespersonFailure == freezed
          ? _value.addSalespersonFailure
          : addSalespersonFailure as Failure,
      hasSubmitted:
          hasSubmitted == freezed ? _value.hasSubmitted : hasSubmitted as bool,
      hasRequested:
          hasRequested == freezed ? _value.hasRequested : hasRequested as bool,
      requestCompleted: requestCompleted == freezed
          ? _value.requestCompleted
          : requestCompleted as bool,
    ));
  }
}

/// @nodoc
abstract class _$AddSalespersonStateCopyWith<$Res>
    implements $AddSalespersonStateCopyWith<$Res> {
  factory _$AddSalespersonStateCopyWith(_AddSalespersonState value,
          $Res Function(_AddSalespersonState) then) =
      __$AddSalespersonStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Either<Failure, Name> name,
      Either<Failure, PhoneNumber> phoneNumber,
      Failure addSalespersonFailure,
      bool hasSubmitted,
      bool hasRequested,
      bool requestCompleted});
}

/// @nodoc
class __$AddSalespersonStateCopyWithImpl<$Res>
    extends _$AddSalespersonStateCopyWithImpl<$Res>
    implements _$AddSalespersonStateCopyWith<$Res> {
  __$AddSalespersonStateCopyWithImpl(
      _AddSalespersonState _value, $Res Function(_AddSalespersonState) _then)
      : super(_value, (v) => _then(v as _AddSalespersonState));

  @override
  _AddSalespersonState get _value => super._value as _AddSalespersonState;

  @override
  $Res call({
    Object name = freezed,
    Object phoneNumber = freezed,
    Object addSalespersonFailure = freezed,
    Object hasSubmitted = freezed,
    Object hasRequested = freezed,
    Object requestCompleted = freezed,
  }) {
    return _then(_AddSalespersonState(
      name: name == freezed ? _value.name : name as Either<Failure, Name>,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber as Either<Failure, PhoneNumber>,
      addSalespersonFailure: addSalespersonFailure == freezed
          ? _value.addSalespersonFailure
          : addSalespersonFailure as Failure,
      hasSubmitted:
          hasSubmitted == freezed ? _value.hasSubmitted : hasSubmitted as bool,
      hasRequested:
          hasRequested == freezed ? _value.hasRequested : hasRequested as bool,
      requestCompleted: requestCompleted == freezed
          ? _value.requestCompleted
          : requestCompleted as bool,
    ));
  }
}

/// @nodoc
class _$_AddSalespersonState implements _AddSalespersonState {
  const _$_AddSalespersonState(
      {this.name,
      this.phoneNumber,
      this.addSalespersonFailure,
      this.hasSubmitted,
      this.hasRequested,
      this.requestCompleted});

  @override
  final Either<Failure, Name> name;
  @override
  final Either<Failure, PhoneNumber> phoneNumber;
  @override
  final Failure addSalespersonFailure;
  @override
  final bool hasSubmitted;
  @override
  final bool hasRequested;
  @override
  final bool requestCompleted;

  @override
  String toString() {
    return 'AddSalespersonState(name: $name, phoneNumber: $phoneNumber, addSalespersonFailure: $addSalespersonFailure, hasSubmitted: $hasSubmitted, hasRequested: $hasRequested, requestCompleted: $requestCompleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddSalespersonState &&
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
                    .equals(other.hasRequested, hasRequested)) &&
            (identical(other.requestCompleted, requestCompleted) ||
                const DeepCollectionEquality()
                    .equals(other.requestCompleted, requestCompleted)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(addSalespersonFailure) ^
      const DeepCollectionEquality().hash(hasSubmitted) ^
      const DeepCollectionEquality().hash(hasRequested) ^
      const DeepCollectionEquality().hash(requestCompleted);

  @JsonKey(ignore: true)
  @override
  _$AddSalespersonStateCopyWith<_AddSalespersonState> get copyWith =>
      __$AddSalespersonStateCopyWithImpl<_AddSalespersonState>(
          this, _$identity);
}

abstract class _AddSalespersonState implements AddSalespersonState {
  const factory _AddSalespersonState(
      {Either<Failure, Name> name,
      Either<Failure, PhoneNumber> phoneNumber,
      Failure addSalespersonFailure,
      bool hasSubmitted,
      bool hasRequested,
      bool requestCompleted}) = _$_AddSalespersonState;

  @override
  Either<Failure, Name> get name;
  @override
  Either<Failure, PhoneNumber> get phoneNumber;
  @override
  Failure get addSalespersonFailure;
  @override
  bool get hasSubmitted;
  @override
  bool get hasRequested;
  @override
  bool get requestCompleted;
  @override
  @JsonKey(ignore: true)
  _$AddSalespersonStateCopyWith<_AddSalespersonState> get copyWith;
}
