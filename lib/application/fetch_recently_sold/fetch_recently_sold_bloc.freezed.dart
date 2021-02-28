// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'fetch_recently_sold_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FetchRecentlySoldStateTearOff {
  const _$FetchRecentlySoldStateTearOff();

// ignore: unused_element
  _FetchRecentlySoldState call(
      {bool isLoading,
      bool hasLoaded,
      Failure fetchingSalesFailure,
      List<SaleTransaction> sales}) {
    return _FetchRecentlySoldState(
      isLoading: isLoading,
      hasLoaded: hasLoaded,
      fetchingSalesFailure: fetchingSalesFailure,
      sales: sales,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FetchRecentlySoldState = _$FetchRecentlySoldStateTearOff();

/// @nodoc
mixin _$FetchRecentlySoldState {
  bool get isLoading;
  bool get hasLoaded;
  Failure get fetchingSalesFailure;
  List<SaleTransaction> get sales;

  @JsonKey(ignore: true)
  $FetchRecentlySoldStateCopyWith<FetchRecentlySoldState> get copyWith;
}

/// @nodoc
abstract class $FetchRecentlySoldStateCopyWith<$Res> {
  factory $FetchRecentlySoldStateCopyWith(FetchRecentlySoldState value,
          $Res Function(FetchRecentlySoldState) then) =
      _$FetchRecentlySoldStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool hasLoaded,
      Failure fetchingSalesFailure,
      List<SaleTransaction> sales});
}

/// @nodoc
class _$FetchRecentlySoldStateCopyWithImpl<$Res>
    implements $FetchRecentlySoldStateCopyWith<$Res> {
  _$FetchRecentlySoldStateCopyWithImpl(this._value, this._then);

  final FetchRecentlySoldState _value;
  // ignore: unused_field
  final $Res Function(FetchRecentlySoldState) _then;

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
abstract class _$FetchRecentlySoldStateCopyWith<$Res>
    implements $FetchRecentlySoldStateCopyWith<$Res> {
  factory _$FetchRecentlySoldStateCopyWith(_FetchRecentlySoldState value,
          $Res Function(_FetchRecentlySoldState) then) =
      __$FetchRecentlySoldStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool hasLoaded,
      Failure fetchingSalesFailure,
      List<SaleTransaction> sales});
}

/// @nodoc
class __$FetchRecentlySoldStateCopyWithImpl<$Res>
    extends _$FetchRecentlySoldStateCopyWithImpl<$Res>
    implements _$FetchRecentlySoldStateCopyWith<$Res> {
  __$FetchRecentlySoldStateCopyWithImpl(_FetchRecentlySoldState _value,
      $Res Function(_FetchRecentlySoldState) _then)
      : super(_value, (v) => _then(v as _FetchRecentlySoldState));

  @override
  _FetchRecentlySoldState get _value => super._value as _FetchRecentlySoldState;

  @override
  $Res call({
    Object isLoading = freezed,
    Object hasLoaded = freezed,
    Object fetchingSalesFailure = freezed,
    Object sales = freezed,
  }) {
    return _then(_FetchRecentlySoldState(
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
class _$_FetchRecentlySoldState implements _FetchRecentlySoldState {
  const _$_FetchRecentlySoldState(
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
    return 'FetchRecentlySoldState(isLoading: $isLoading, hasLoaded: $hasLoaded, fetchingSalesFailure: $fetchingSalesFailure, sales: $sales)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FetchRecentlySoldState &&
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
  _$FetchRecentlySoldStateCopyWith<_FetchRecentlySoldState> get copyWith =>
      __$FetchRecentlySoldStateCopyWithImpl<_FetchRecentlySoldState>(
          this, _$identity);
}

abstract class _FetchRecentlySoldState implements FetchRecentlySoldState {
  const factory _FetchRecentlySoldState(
      {bool isLoading,
      bool hasLoaded,
      Failure fetchingSalesFailure,
      List<SaleTransaction> sales}) = _$_FetchRecentlySoldState;

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
  _$FetchRecentlySoldStateCopyWith<_FetchRecentlySoldState> get copyWith;
}
