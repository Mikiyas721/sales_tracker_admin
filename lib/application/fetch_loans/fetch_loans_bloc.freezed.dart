// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'fetch_loans_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FetchLoansStateTearOff {
  const _$FetchLoansStateTearOff();

// ignore: unused_element
  _FetchLoansState call(
      {List<CardTransaction> sales,
      Option<Failure> fetchingSalesFailure,
      bool isLoading}) {
    return _FetchLoansState(
      sales: sales,
      fetchingSalesFailure: fetchingSalesFailure,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FetchLoansState = _$FetchLoansStateTearOff();

/// @nodoc
mixin _$FetchLoansState {
  List<CardTransaction> get sales;
  Option<Failure> get fetchingSalesFailure;
  bool get isLoading;

  @JsonKey(ignore: true)
  $FetchLoansStateCopyWith<FetchLoansState> get copyWith;
}

/// @nodoc
abstract class $FetchLoansStateCopyWith<$Res> {
  factory $FetchLoansStateCopyWith(
          FetchLoansState value, $Res Function(FetchLoansState) then) =
      _$FetchLoansStateCopyWithImpl<$Res>;
  $Res call(
      {List<CardTransaction> sales,
      Option<Failure> fetchingSalesFailure,
      bool isLoading});
}

/// @nodoc
class _$FetchLoansStateCopyWithImpl<$Res>
    implements $FetchLoansStateCopyWith<$Res> {
  _$FetchLoansStateCopyWithImpl(this._value, this._then);

  final FetchLoansState _value;
  // ignore: unused_field
  final $Res Function(FetchLoansState) _then;

  @override
  $Res call({
    Object sales = freezed,
    Object fetchingSalesFailure = freezed,
    Object isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      sales: sales == freezed ? _value.sales : sales as List<CardTransaction>,
      fetchingSalesFailure: fetchingSalesFailure == freezed
          ? _value.fetchingSalesFailure
          : fetchingSalesFailure as Option<Failure>,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

/// @nodoc
abstract class _$FetchLoansStateCopyWith<$Res>
    implements $FetchLoansStateCopyWith<$Res> {
  factory _$FetchLoansStateCopyWith(
          _FetchLoansState value, $Res Function(_FetchLoansState) then) =
      __$FetchLoansStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<CardTransaction> sales,
      Option<Failure> fetchingSalesFailure,
      bool isLoading});
}

/// @nodoc
class __$FetchLoansStateCopyWithImpl<$Res>
    extends _$FetchLoansStateCopyWithImpl<$Res>
    implements _$FetchLoansStateCopyWith<$Res> {
  __$FetchLoansStateCopyWithImpl(
      _FetchLoansState _value, $Res Function(_FetchLoansState) _then)
      : super(_value, (v) => _then(v as _FetchLoansState));

  @override
  _FetchLoansState get _value => super._value as _FetchLoansState;

  @override
  $Res call({
    Object sales = freezed,
    Object fetchingSalesFailure = freezed,
    Object isLoading = freezed,
  }) {
    return _then(_FetchLoansState(
      sales: sales == freezed ? _value.sales : sales as List<CardTransaction>,
      fetchingSalesFailure: fetchingSalesFailure == freezed
          ? _value.fetchingSalesFailure
          : fetchingSalesFailure as Option<Failure>,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

/// @nodoc
class _$_FetchLoansState implements _FetchLoansState {
  const _$_FetchLoansState(
      {this.sales, this.fetchingSalesFailure, this.isLoading});

  @override
  final List<CardTransaction> sales;
  @override
  final Option<Failure> fetchingSalesFailure;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'FetchLoansState(sales: $sales, fetchingSalesFailure: $fetchingSalesFailure, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FetchLoansState &&
            (identical(other.sales, sales) ||
                const DeepCollectionEquality().equals(other.sales, sales)) &&
            (identical(other.fetchingSalesFailure, fetchingSalesFailure) ||
                const DeepCollectionEquality().equals(
                    other.fetchingSalesFailure, fetchingSalesFailure)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(sales) ^
      const DeepCollectionEquality().hash(fetchingSalesFailure) ^
      const DeepCollectionEquality().hash(isLoading);

  @JsonKey(ignore: true)
  @override
  _$FetchLoansStateCopyWith<_FetchLoansState> get copyWith =>
      __$FetchLoansStateCopyWithImpl<_FetchLoansState>(this, _$identity);
}

abstract class _FetchLoansState implements FetchLoansState {
  const factory _FetchLoansState(
      {List<CardTransaction> sales,
      Option<Failure> fetchingSalesFailure,
      bool isLoading}) = _$_FetchLoansState;

  @override
  List<CardTransaction> get sales;
  @override
  Option<Failure> get fetchingSalesFailure;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$FetchLoansStateCopyWith<_FetchLoansState> get copyWith;
}
