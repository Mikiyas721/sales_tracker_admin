// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'fetch_salesperson_shop_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FetchSalespersonShopsStateTearOff {
  const _$FetchSalespersonShopsStateTearOff();

// ignore: unused_element
  _FetchSalespersonShopState call(
      {List<Shop> shops,
      Option<Failure> salesPersonShopsLoadingFailure,
      bool isLoading}) {
    return _FetchSalespersonShopState(
      shops: shops,
      salesPersonShopsLoadingFailure: salesPersonShopsLoadingFailure,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FetchSalespersonShopsState = _$FetchSalespersonShopsStateTearOff();

/// @nodoc
mixin _$FetchSalespersonShopsState {
  List<Shop> get shops;
  Option<Failure> get salesPersonShopsLoadingFailure;
  bool get isLoading;

  @JsonKey(ignore: true)
  $FetchSalespersonShopsStateCopyWith<FetchSalespersonShopsState> get copyWith;
}

/// @nodoc
abstract class $FetchSalespersonShopsStateCopyWith<$Res> {
  factory $FetchSalespersonShopsStateCopyWith(FetchSalespersonShopsState value,
          $Res Function(FetchSalespersonShopsState) then) =
      _$FetchSalespersonShopsStateCopyWithImpl<$Res>;
  $Res call(
      {List<Shop> shops,
      Option<Failure> salesPersonShopsLoadingFailure,
      bool isLoading});
}

/// @nodoc
class _$FetchSalespersonShopsStateCopyWithImpl<$Res>
    implements $FetchSalespersonShopsStateCopyWith<$Res> {
  _$FetchSalespersonShopsStateCopyWithImpl(this._value, this._then);

  final FetchSalespersonShopsState _value;
  // ignore: unused_field
  final $Res Function(FetchSalespersonShopsState) _then;

  @override
  $Res call({
    Object shops = freezed,
    Object salesPersonShopsLoadingFailure = freezed,
    Object isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      shops: shops == freezed ? _value.shops : shops as List<Shop>,
      salesPersonShopsLoadingFailure: salesPersonShopsLoadingFailure == freezed
          ? _value.salesPersonShopsLoadingFailure
          : salesPersonShopsLoadingFailure as Option<Failure>,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

/// @nodoc
abstract class _$FetchSalespersonShopStateCopyWith<$Res>
    implements $FetchSalespersonShopsStateCopyWith<$Res> {
  factory _$FetchSalespersonShopStateCopyWith(_FetchSalespersonShopState value,
          $Res Function(_FetchSalespersonShopState) then) =
      __$FetchSalespersonShopStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Shop> shops,
      Option<Failure> salesPersonShopsLoadingFailure,
      bool isLoading});
}

/// @nodoc
class __$FetchSalespersonShopStateCopyWithImpl<$Res>
    extends _$FetchSalespersonShopsStateCopyWithImpl<$Res>
    implements _$FetchSalespersonShopStateCopyWith<$Res> {
  __$FetchSalespersonShopStateCopyWithImpl(_FetchSalespersonShopState _value,
      $Res Function(_FetchSalespersonShopState) _then)
      : super(_value, (v) => _then(v as _FetchSalespersonShopState));

  @override
  _FetchSalespersonShopState get _value =>
      super._value as _FetchSalespersonShopState;

  @override
  $Res call({
    Object shops = freezed,
    Object salesPersonShopsLoadingFailure = freezed,
    Object isLoading = freezed,
  }) {
    return _then(_FetchSalespersonShopState(
      shops: shops == freezed ? _value.shops : shops as List<Shop>,
      salesPersonShopsLoadingFailure: salesPersonShopsLoadingFailure == freezed
          ? _value.salesPersonShopsLoadingFailure
          : salesPersonShopsLoadingFailure as Option<Failure>,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

/// @nodoc
class _$_FetchSalespersonShopState implements _FetchSalespersonShopState {
  const _$_FetchSalespersonShopState(
      {this.shops, this.salesPersonShopsLoadingFailure, this.isLoading});

  @override
  final List<Shop> shops;
  @override
  final Option<Failure> salesPersonShopsLoadingFailure;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'FetchSalespersonShopsState(shops: $shops, salesPersonShopsLoadingFailure: $salesPersonShopsLoadingFailure, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FetchSalespersonShopState &&
            (identical(other.shops, shops) ||
                const DeepCollectionEquality().equals(other.shops, shops)) &&
            (identical(other.salesPersonShopsLoadingFailure,
                    salesPersonShopsLoadingFailure) ||
                const DeepCollectionEquality().equals(
                    other.salesPersonShopsLoadingFailure,
                    salesPersonShopsLoadingFailure)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(shops) ^
      const DeepCollectionEquality().hash(salesPersonShopsLoadingFailure) ^
      const DeepCollectionEquality().hash(isLoading);

  @JsonKey(ignore: true)
  @override
  _$FetchSalespersonShopStateCopyWith<_FetchSalespersonShopState>
      get copyWith =>
          __$FetchSalespersonShopStateCopyWithImpl<_FetchSalespersonShopState>(
              this, _$identity);
}

abstract class _FetchSalespersonShopState
    implements FetchSalespersonShopsState {
  const factory _FetchSalespersonShopState(
      {List<Shop> shops,
      Option<Failure> salesPersonShopsLoadingFailure,
      bool isLoading}) = _$_FetchSalespersonShopState;

  @override
  List<Shop> get shops;
  @override
  Option<Failure> get salesPersonShopsLoadingFailure;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$FetchSalespersonShopStateCopyWith<_FetchSalespersonShopState> get copyWith;
}
