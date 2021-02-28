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
      {bool isLoading,
      bool hasLoaded,
      Failure salespeopleLoadingFailure,
      List<SalesPerson> salespeople}) {
    return _FetchSalespeopleState(
      isLoading: isLoading,
      hasLoaded: hasLoaded,
      salespeopleLoadingFailure: salespeopleLoadingFailure,
      salespeople: salespeople,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FetchSalespeopleState = _$FetchSalespeopleStateTearOff();

/// @nodoc
mixin _$FetchSalespeopleState {
  bool get isLoading;
  bool get hasLoaded;
  Failure get salespeopleLoadingFailure;
  List<SalesPerson> get salespeople;

  @JsonKey(ignore: true)
  $FetchSalespeopleStateCopyWith<FetchSalespeopleState> get copyWith;
}

/// @nodoc
abstract class $FetchSalespeopleStateCopyWith<$Res> {
  factory $FetchSalespeopleStateCopyWith(FetchSalespeopleState value,
          $Res Function(FetchSalespeopleState) then) =
      _$FetchSalespeopleStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool hasLoaded,
      Failure salespeopleLoadingFailure,
      List<SalesPerson> salespeople});
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
    Object isLoading = freezed,
    Object hasLoaded = freezed,
    Object salespeopleLoadingFailure = freezed,
    Object salespeople = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      hasLoaded: hasLoaded == freezed ? _value.hasLoaded : hasLoaded as bool,
      salespeopleLoadingFailure: salespeopleLoadingFailure == freezed
          ? _value.salespeopleLoadingFailure
          : salespeopleLoadingFailure as Failure,
      salespeople: salespeople == freezed
          ? _value.salespeople
          : salespeople as List<SalesPerson>,
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
      {bool isLoading,
      bool hasLoaded,
      Failure salespeopleLoadingFailure,
      List<SalesPerson> salespeople});
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
    Object isLoading = freezed,
    Object hasLoaded = freezed,
    Object salespeopleLoadingFailure = freezed,
    Object salespeople = freezed,
  }) {
    return _then(_FetchSalespeopleState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      hasLoaded: hasLoaded == freezed ? _value.hasLoaded : hasLoaded as bool,
      salespeopleLoadingFailure: salespeopleLoadingFailure == freezed
          ? _value.salespeopleLoadingFailure
          : salespeopleLoadingFailure as Failure,
      salespeople: salespeople == freezed
          ? _value.salespeople
          : salespeople as List<SalesPerson>,
    ));
  }
}

/// @nodoc
class _$_FetchSalespeopleState implements _FetchSalespeopleState {
  const _$_FetchSalespeopleState(
      {this.isLoading,
      this.hasLoaded,
      this.salespeopleLoadingFailure,
      this.salespeople});

  @override
  final bool isLoading;
  @override
  final bool hasLoaded;
  @override
  final Failure salespeopleLoadingFailure;
  @override
  final List<SalesPerson> salespeople;

  @override
  String toString() {
    return 'FetchSalespeopleState(isLoading: $isLoading, hasLoaded: $hasLoaded, salespeopleLoadingFailure: $salespeopleLoadingFailure, salespeople: $salespeople)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FetchSalespeopleState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.hasLoaded, hasLoaded) ||
                const DeepCollectionEquality()
                    .equals(other.hasLoaded, hasLoaded)) &&
            (identical(other.salespeopleLoadingFailure,
                    salespeopleLoadingFailure) ||
                const DeepCollectionEquality().equals(
                    other.salespeopleLoadingFailure,
                    salespeopleLoadingFailure)) &&
            (identical(other.salespeople, salespeople) ||
                const DeepCollectionEquality()
                    .equals(other.salespeople, salespeople)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(hasLoaded) ^
      const DeepCollectionEquality().hash(salespeopleLoadingFailure) ^
      const DeepCollectionEquality().hash(salespeople);

  @JsonKey(ignore: true)
  @override
  _$FetchSalespeopleStateCopyWith<_FetchSalespeopleState> get copyWith =>
      __$FetchSalespeopleStateCopyWithImpl<_FetchSalespeopleState>(
          this, _$identity);
}

abstract class _FetchSalespeopleState implements FetchSalespeopleState {
  const factory _FetchSalespeopleState(
      {bool isLoading,
      bool hasLoaded,
      Failure salespeopleLoadingFailure,
      List<SalesPerson> salespeople}) = _$_FetchSalespeopleState;

  @override
  bool get isLoading;
  @override
  bool get hasLoaded;
  @override
  Failure get salespeopleLoadingFailure;
  @override
  List<SalesPerson> get salespeople;
  @override
  @JsonKey(ignore: true)
  _$FetchSalespeopleStateCopyWith<_FetchSalespeopleState> get copyWith;
}
