// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'fetch_salespeople_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FetchSalespeopleStateTearOff {
  const _$FetchSalespeopleStateTearOff();

// ignore: unused_element
  _FetchSalespeopleState call(
      {List<Salesperson> salespeople,
      Option<Failure> salespeopleLoadingFailure,
      bool isLoading}) {
    return _FetchSalespeopleState(
      salespeople: salespeople,
      salespeopleLoadingFailure: salespeopleLoadingFailure,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FetchSalespeopleState = _$FetchSalespeopleStateTearOff();

/// @nodoc
mixin _$FetchSalespeopleState {
  List<Salesperson> get salespeople;
  Option<Failure> get salespeopleLoadingFailure;
  bool get isLoading;

  @JsonKey(ignore: true)
  $FetchSalespeopleStateCopyWith<FetchSalespeopleState> get copyWith;
}

/// @nodoc
abstract class $FetchSalespeopleStateCopyWith<$Res> {
  factory $FetchSalespeopleStateCopyWith(FetchSalespeopleState value,
          $Res Function(FetchSalespeopleState) then) =
      _$FetchSalespeopleStateCopyWithImpl<$Res>;
  $Res call(
      {List<Salesperson> salespeople,
      Option<Failure> salespeopleLoadingFailure,
      bool isLoading});
}

/// @nodoc
class _$FetchSalespeopleStateCopyWithImpl<$Res>
    implements $FetchSalespeopleStateCopyWith<$Res> {
  _$FetchSalespeopleStateCopyWithImpl(this._value, this._then);

  final FetchSalespeopleState _value;
  // ignore: unused_field
  final $Res Function(FetchSalespeopleState) _then;

  @override
  $Res call({
    Object salespeople = freezed,
    Object salespeopleLoadingFailure = freezed,
    Object isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      salespeople: salespeople == freezed
          ? _value.salespeople
          : salespeople as List<Salesperson>,
      salespeopleLoadingFailure: salespeopleLoadingFailure == freezed
          ? _value.salespeopleLoadingFailure
          : salespeopleLoadingFailure as Option<Failure>,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

/// @nodoc
abstract class _$FetchSalespeopleStateCopyWith<$Res>
    implements $FetchSalespeopleStateCopyWith<$Res> {
  factory _$FetchSalespeopleStateCopyWith(_FetchSalespeopleState value,
          $Res Function(_FetchSalespeopleState) then) =
      __$FetchSalespeopleStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Salesperson> salespeople,
      Option<Failure> salespeopleLoadingFailure,
      bool isLoading});
}

/// @nodoc
class __$FetchSalespeopleStateCopyWithImpl<$Res>
    extends _$FetchSalespeopleStateCopyWithImpl<$Res>
    implements _$FetchSalespeopleStateCopyWith<$Res> {
  __$FetchSalespeopleStateCopyWithImpl(_FetchSalespeopleState _value,
      $Res Function(_FetchSalespeopleState) _then)
      : super(_value, (v) => _then(v as _FetchSalespeopleState));

  @override
  _FetchSalespeopleState get _value => super._value as _FetchSalespeopleState;

  @override
  $Res call({
    Object salespeople = freezed,
    Object salespeopleLoadingFailure = freezed,
    Object isLoading = freezed,
  }) {
    return _then(_FetchSalespeopleState(
      salespeople: salespeople == freezed
          ? _value.salespeople
          : salespeople as List<Salesperson>,
      salespeopleLoadingFailure: salespeopleLoadingFailure == freezed
          ? _value.salespeopleLoadingFailure
          : salespeopleLoadingFailure as Option<Failure>,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

/// @nodoc
class _$_FetchSalespeopleState implements _FetchSalespeopleState {
  const _$_FetchSalespeopleState(
      {this.salespeople, this.salespeopleLoadingFailure, this.isLoading});

  @override
  final List<Salesperson> salespeople;
  @override
  final Option<Failure> salespeopleLoadingFailure;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'FetchSalespeopleState(salespeople: $salespeople, salespeopleLoadingFailure: $salespeopleLoadingFailure, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FetchSalespeopleState &&
            (identical(other.salespeople, salespeople) ||
                const DeepCollectionEquality()
                    .equals(other.salespeople, salespeople)) &&
            (identical(other.salespeopleLoadingFailure,
                    salespeopleLoadingFailure) ||
                const DeepCollectionEquality().equals(
                    other.salespeopleLoadingFailure,
                    salespeopleLoadingFailure)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(salespeople) ^
      const DeepCollectionEquality().hash(salespeopleLoadingFailure) ^
      const DeepCollectionEquality().hash(isLoading);

  @JsonKey(ignore: true)
  @override
  _$FetchSalespeopleStateCopyWith<_FetchSalespeopleState> get copyWith =>
      __$FetchSalespeopleStateCopyWithImpl<_FetchSalespeopleState>(
          this, _$identity);
}

abstract class _FetchSalespeopleState implements FetchSalespeopleState {
  const factory _FetchSalespeopleState(
      {List<Salesperson> salespeople,
      Option<Failure> salespeopleLoadingFailure,
      bool isLoading}) = _$_FetchSalespeopleState;

  @override
  List<Salesperson> get salespeople;
  @override
  Option<Failure> get salespeopleLoadingFailure;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$FetchSalespeopleStateCopyWith<_FetchSalespeopleState> get copyWith;
}
