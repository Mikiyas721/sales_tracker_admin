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
      {bool isLoading,
      bool hasLoaded,
      Failure fetchingSalesFailure,
      List<SaleTransaction> sales}) {
    return _FetchLoansState(
      isLoading: isLoading,
      hasLoaded: hasLoaded,
      fetchingSalesFailure: fetchingSalesFailure,
      sales: sales,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FetchLoansState = _$FetchLoansStateTearOff();

/// @nodoc
mixin _$FetchLoansState {
  bool get isLoading;
  bool get hasLoaded;
  Failure get fetchingSalesFailure;
  List<SaleTransaction> get sales;

  @JsonKey(ignore: true)
  $FetchLoansStateCopyWith<FetchLoansState> get copyWith;
}

/// @nodoc
abstract class $FetchLoansStateCopyWith<$Res> {
  factory $FetchLoansStateCopyWith(
          FetchLoansState value, $Res Function(FetchLoansState) then) =
      _$FetchLoansStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool hasLoaded,
      Failure fetchingSalesFailure,
      List<SaleTransaction> sales});
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
    Object isLoading = freezed,
    Object hasLoaded = freezed,
    Object fetchingSalesFailure = freezed,
    Object sales = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      hasLoaded: hasLoaded == freezed ? _value.hasLoaded : hasLoaded as bool,
      fetchingSalesFailure: fetchingSalesFailure == freezed
          ? _value.fetchingSalesFailure
          : fetchingSalesFailure as Failure,
      sales: sales == freezed ? _value.sales : sales as List<SaleTransaction>,
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
      {bool isLoading,
      bool hasLoaded,
      Failure fetchingSalesFailure,
      List<SaleTransaction> sales});
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
    Object isLoading = freezed,
    Object hasLoaded = freezed,
    Object fetchingSalesFailure = freezed,
    Object sales = freezed,
  }) {
    return _then(_FetchLoansState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      hasLoaded: hasLoaded == freezed ? _value.hasLoaded : hasLoaded as bool,
      fetchingSalesFailure: fetchingSalesFailure == freezed
          ? _value.fetchingSalesFailure
          : fetchingSalesFailure as Failure,
      sales: sales == freezed ? _value.sales : sales as List<SaleTransaction>,
    ));
  }
}

/// @nodoc
class _$_FetchLoansState implements _FetchLoansState {
  const _$_FetchLoansState(
      {this.isLoading, this.hasLoaded, this.fetchingSalesFailure, this.sales});

  @override
  final bool isLoading;
  @override
  final bool hasLoaded;
  @override
  final Failure fetchingSalesFailure;
  @override
  final List<SaleTransaction> sales;

  @override
  String toString() {
    return 'FetchLoansState(isLoading: $isLoading, hasLoaded: $hasLoaded, fetchingSalesFailure: $fetchingSalesFailure, sales: $sales)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FetchLoansState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.hasLoaded, hasLoaded) ||
                const DeepCollectionEquality()
                    .equals(other.hasLoaded, hasLoaded)) &&
            (identical(other.fetchingSalesFailure, fetchingSalesFailure) ||
                const DeepCollectionEquality().equals(
                    other.fetchingSalesFailure, fetchingSalesFailure)) &&
            (identical(other.sales, sales) ||
                const DeepCollectionEquality().equals(other.sales, sales)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(hasLoaded) ^
      const DeepCollectionEquality().hash(fetchingSalesFailure) ^
      const DeepCollectionEquality().hash(sales);

  @JsonKey(ignore: true)
  @override
  _$FetchLoansStateCopyWith<_FetchLoansState> get copyWith =>
      __$FetchLoansStateCopyWithImpl<_FetchLoansState>(this, _$identity);
}

abstract class _FetchLoansState implements FetchLoansState {
  const factory _FetchLoansState(
      {bool isLoading,
      bool hasLoaded,
      Failure fetchingSalesFailure,
      List<SaleTransaction> sales}) = _$_FetchLoansState;

  @override
  bool get isLoading;
  @override
  bool get hasLoaded;
  @override
  Failure get fetchingSalesFailure;
  @override
  List<SaleTransaction> get sales;
  @override
  @JsonKey(ignore: true)
  _$FetchLoansStateCopyWith<_FetchLoansState> get copyWith;
}
