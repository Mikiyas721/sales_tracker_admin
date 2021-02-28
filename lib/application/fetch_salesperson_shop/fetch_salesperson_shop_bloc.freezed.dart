// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'fetch_salesperson_shop_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FetchSalespersonShopStateTearOff {
  const _$FetchSalespersonShopStateTearOff();

// ignore: unused_element
  _FetchSalespersonShopState call(
      {bool isLoading,
      bool hasLoaded,
      Failure salesPersonShopsLoadingFailure,
      List<Shop> shops}) {
    return _FetchSalespersonShopState(
      isLoading: isLoading,
      hasLoaded: hasLoaded,
      salesPersonShopsLoadingFailure: salesPersonShopsLoadingFailure,
      shops: shops,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FetchSalespersonShopState = _$FetchSalespersonShopStateTearOff();

/// @nodoc
mixin _$FetchSalespersonShopState {
  bool get isLoading;
  bool get hasLoaded;
  Failure get salesPersonShopsLoadingFailure;
  List<Shop> get shops;

  @JsonKey(ignore: true)
  $FetchSalespersonShopStateCopyWith<FetchSalespersonShopState> get copyWith;
}

/// @nodoc
abstract class $FetchSalespersonShopStateCopyWith<$Res> {
  factory $FetchSalespersonShopStateCopyWith(FetchSalespersonShopState value,
          $Res Function(FetchSalespersonShopState) then) =
      _$FetchSalespersonShopStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool hasLoaded,
      Failure salesPersonShopsLoadingFailure,
      List<Shop> shops});
}

/// @nodoc
class _$FetchSalespersonShopStateCopyWithImpl<$Res>
    implements $FetchSalespersonShopStateCopyWith<$Res> {
  _$FetchSalespersonShopStateCopyWithImpl(this._value, this._then);

  final FetchSalespersonShopState _value;
  // ignore: unused_field
  final $Res Function(FetchSalespersonShopState) _then;

  @override
  $Res call({
    Object isLoading = freezed,
    Object hasLoaded = freezed,
    Object salesPersonShopsLoadingFailure = freezed,
    Object shops = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      hasLoaded: hasLoaded == freezed ? _value.hasLoaded : hasLoaded as bool,
      salesPersonShopsLoadingFailure: salesPersonShopsLoadingFailure == freezed
          ? _value.salesPersonShopsLoadingFailure
          : salesPersonShopsLoadingFailure as Failure,
      shops: shops == freezed ? _value.shops : shops as List<Shop>,
    ));
  }
}

/// @nodoc
abstract class _$FetchSalespersonShopStateCopyWith<$Res>
    implements $FetchSalespersonShopStateCopyWith<$Res> {
  factory _$FetchSalespersonShopStateCopyWith(_FetchSalespersonShopState value,
          $Res Function(_FetchSalespersonShopState) then) =
      __$FetchSalespersonShopStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool hasLoaded,
      Failure salesPersonShopsLoadingFailure,
      List<Shop> shops});
}

/// @nodoc
class __$FetchSalespersonShopStateCopyWithImpl<$Res>
    extends _$FetchSalespersonShopStateCopyWithImpl<$Res>
    implements _$FetchSalespersonShopStateCopyWith<$Res> {
  __$FetchSalespersonShopStateCopyWithImpl(_FetchSalespersonShopState _value,
      $Res Function(_FetchSalespersonShopState) _then)
      : super(_value, (v) => _then(v as _FetchSalespersonShopState));

  @override
  _FetchSalespersonShopState get _value =>
      super._value as _FetchSalespersonShopState;

  @override
  $Res call({
    Object isLoading = freezed,
    Object hasLoaded = freezed,
    Object salesPersonShopsLoadingFailure = freezed,
    Object shops = freezed,
  }) {
    return _then(_FetchSalespersonShopState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      hasLoaded: hasLoaded == freezed ? _value.hasLoaded : hasLoaded as bool,
      salesPersonShopsLoadingFailure: salesPersonShopsLoadingFailure == freezed
          ? _value.salesPersonShopsLoadingFailure
          : salesPersonShopsLoadingFailure as Failure,
      shops: shops == freezed ? _value.shops : shops as List<Shop>,
    ));
  }
}

/// @nodoc
class _$_FetchSalespersonShopState implements _FetchSalespersonShopState {
  const _$_FetchSalespersonShopState(
      {this.isLoading,
      this.hasLoaded,
      this.salesPersonShopsLoadingFailure,
      this.shops});

  @override
  final bool isLoading;
  @override
  final bool hasLoaded;
  @override
  final Failure salesPersonShopsLoadingFailure;
  @override
  final List<Shop> shops;

  @override
  String toString() {
    return 'FetchSalespersonShopState(isLoading: $isLoading, hasLoaded: $hasLoaded, salesPersonShopsLoadingFailure: $salesPersonShopsLoadingFailure, shops: $shops)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FetchSalespersonShopState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.hasLoaded, hasLoaded) ||
                const DeepCollectionEquality()
                    .equals(other.hasLoaded, hasLoaded)) &&
            (identical(other.salesPersonShopsLoadingFailure,
                    salesPersonShopsLoadingFailure) ||
                const DeepCollectionEquality().equals(
                    other.salesPersonShopsLoadingFailure,
                    salesPersonShopsLoadingFailure)) &&
            (identical(other.shops, shops) ||
                const DeepCollectionEquality().equals(other.shops, shops)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(hasLoaded) ^
      const DeepCollectionEquality().hash(salesPersonShopsLoadingFailure) ^
      const DeepCollectionEquality().hash(shops);

  @JsonKey(ignore: true)
  @override
  _$FetchSalespersonShopStateCopyWith<_FetchSalespersonShopState>
      get copyWith =>
          __$FetchSalespersonShopStateCopyWithImpl<_FetchSalespersonShopState>(
              this, _$identity);
}

abstract class _FetchSalespersonShopState implements FetchSalespersonShopState {
  const factory _FetchSalespersonShopState(
      {bool isLoading,
      bool hasLoaded,
      Failure salesPersonShopsLoadingFailure,
      List<Shop> shops}) = _$_FetchSalespersonShopState;

  @override
  bool get isLoading;
  @override
  bool get hasLoaded;
  @override
  Failure get salesPersonShopsLoadingFailure;
  @override
  List<Shop> get shops;
  @override
  @JsonKey(ignore: true)
  _$FetchSalespersonShopStateCopyWith<_FetchSalespersonShopState> get copyWith;
}
