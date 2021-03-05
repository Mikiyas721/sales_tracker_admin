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
      {List<CardTransaction> sales,
      Option<Failure> fetchingSalesFailure,
      bool isLoading}) {
    return _FetchRecentlySoldState(
      sales: sales,
      fetchingSalesFailure: fetchingSalesFailure,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FetchRecentlySoldState = _$FetchRecentlySoldStateTearOff();

/// @nodoc
mixin _$FetchRecentlySoldState {
  List<CardTransaction> get sales;
  Option<Failure> get fetchingSalesFailure;
  bool get isLoading;

  @JsonKey(ignore: true)
  $FetchRecentlySoldStateCopyWith<FetchRecentlySoldState> get copyWith;
}

/// @nodoc
abstract class $FetchRecentlySoldStateCopyWith<$Res> {
  factory $FetchRecentlySoldStateCopyWith(FetchRecentlySoldState value,
          $Res Function(FetchRecentlySoldState) then) =
      _$FetchRecentlySoldStateCopyWithImpl<$Res>;
  $Res call(
      {List<CardTransaction> sales,
      Option<Failure> fetchingSalesFailure,
      bool isLoading});
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
abstract class _$FetchRecentlySoldStateCopyWith<$Res>
    implements $FetchRecentlySoldStateCopyWith<$Res> {
  factory _$FetchRecentlySoldStateCopyWith(_FetchRecentlySoldState value,
          $Res Function(_FetchRecentlySoldState) then) =
      __$FetchRecentlySoldStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<CardTransaction> sales,
      Option<Failure> fetchingSalesFailure,
      bool isLoading});
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
    Object sales = freezed,
    Object fetchingSalesFailure = freezed,
    Object isLoading = freezed,
  }) {
    return _then(_FetchRecentlySoldState(
      sales: sales == freezed ? _value.sales : sales as List<CardTransaction>,
      fetchingSalesFailure: fetchingSalesFailure == freezed
          ? _value.fetchingSalesFailure
          : fetchingSalesFailure as Option<Failure>,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

/// @nodoc
class _$_FetchRecentlySoldState implements _FetchRecentlySoldState {
  const _$_FetchRecentlySoldState(
      {this.sales, this.fetchingSalesFailure, this.isLoading});

  @override
  final List<CardTransaction> sales;
  @override
  final Option<Failure> fetchingSalesFailure;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'FetchRecentlySoldState(sales: $sales, fetchingSalesFailure: $fetchingSalesFailure, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FetchRecentlySoldState &&
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
  _$FetchRecentlySoldStateCopyWith<_FetchRecentlySoldState> get copyWith =>
      __$FetchRecentlySoldStateCopyWithImpl<_FetchRecentlySoldState>(
          this, _$identity);
}

abstract class _FetchRecentlySoldState implements FetchRecentlySoldState {
  const factory _FetchRecentlySoldState(
      {List<CardTransaction> sales,
      Option<Failure> fetchingSalesFailure,
      bool isLoading}) = _$_FetchRecentlySoldState;

  @override
  List<CardTransaction> get sales;
  @override
  Option<Failure> get fetchingSalesFailure;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$FetchRecentlySoldStateCopyWith<_FetchRecentlySoldState> get copyWith;
}
