// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'fetch_new_shops_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FetchNewShopsStateTearOff {
  const _$FetchNewShopsStateTearOff();

// ignore: unused_element
  _FetchNewShopsState call(
      {bool isLoading,
      bool hasLoaded,
      Failure fetchingShopsFailure,
      List<Shop> shops}) {
    return _FetchNewShopsState(
      isLoading: isLoading,
      hasLoaded: hasLoaded,
      fetchingShopsFailure: fetchingShopsFailure,
      shops: shops,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FetchNewShopsState = _$FetchNewShopsStateTearOff();

/// @nodoc
mixin _$FetchNewShopsState {
  bool get isLoading;
  bool get hasLoaded;
  Failure get fetchingShopsFailure;
  List<Shop> get shops;

  @JsonKey(ignore: true)
  $FetchNewShopsStateCopyWith<FetchNewShopsState> get copyWith;
}

/// @nodoc
abstract class $FetchNewShopsStateCopyWith<$Res> {
  factory $FetchNewShopsStateCopyWith(
          FetchNewShopsState value, $Res Function(FetchNewShopsState) then) =
      _$FetchNewShopsStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool hasLoaded,
      Failure fetchingShopsFailure,
      List<Shop> shops});
}

/// @nodoc
class _$FetchNewShopsStateCopyWithImpl<$Res>
    implements $FetchNewShopsStateCopyWith<$Res> {
  _$FetchNewShopsStateCopyWithImpl(this._value, this._then);

  final FetchNewShopsState _value;
  // ignore: unused_field
  final $Res Function(FetchNewShopsState) _then;

  @override
  $Res call({
    Object isLoading = freezed,
    Object hasLoaded = freezed,
    Object fetchingShopsFailure = freezed,
    Object shops = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      hasLoaded: hasLoaded == freezed ? _value.hasLoaded : hasLoaded as bool,
      fetchingShopsFailure: fetchingShopsFailure == freezed
          ? _value.fetchingShopsFailure
          : fetchingShopsFailure as Failure,
      shops: shops == freezed ? _value.shops : shops as List<Shop>,
    ));
  }
}

/// @nodoc
abstract class _$FetchNewShopsStateCopyWith<$Res>
    implements $FetchNewShopsStateCopyWith<$Res> {
  factory _$FetchNewShopsStateCopyWith(
          _FetchNewShopsState value, $Res Function(_FetchNewShopsState) then) =
      __$FetchNewShopsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool hasLoaded,
      Failure fetchingShopsFailure,
      List<Shop> shops});
}

/// @nodoc
class __$FetchNewShopsStateCopyWithImpl<$Res>
    extends _$FetchNewShopsStateCopyWithImpl<$Res>
    implements _$FetchNewShopsStateCopyWith<$Res> {
  __$FetchNewShopsStateCopyWithImpl(
      _FetchNewShopsState _value, $Res Function(_FetchNewShopsState) _then)
      : super(_value, (v) => _then(v as _FetchNewShopsState));

  @override
  _FetchNewShopsState get _value => super._value as _FetchNewShopsState;

  @override
  $Res call({
    Object isLoading = freezed,
    Object hasLoaded = freezed,
    Object fetchingShopsFailure = freezed,
    Object shops = freezed,
  }) {
    return _then(_FetchNewShopsState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      hasLoaded: hasLoaded == freezed ? _value.hasLoaded : hasLoaded as bool,
      fetchingShopsFailure: fetchingShopsFailure == freezed
          ? _value.fetchingShopsFailure
          : fetchingShopsFailure as Failure,
      shops: shops == freezed ? _value.shops : shops as List<Shop>,
    ));
  }
}

/// @nodoc
class _$_FetchNewShopsState implements _FetchNewShopsState {
  const _$_FetchNewShopsState(
      {this.isLoading, this.hasLoaded, this.fetchingShopsFailure, this.shops});

  @override
  final bool isLoading;
  @override
  final bool hasLoaded;
  @override
  final Failure fetchingShopsFailure;
  @override
  final List<Shop> shops;

  @override
  String toString() {
    return 'FetchNewShopsState(isLoading: $isLoading, hasLoaded: $hasLoaded, fetchingShopsFailure: $fetchingShopsFailure, shops: $shops)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FetchNewShopsState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.hasLoaded, hasLoaded) ||
                const DeepCollectionEquality()
                    .equals(other.hasLoaded, hasLoaded)) &&
            (identical(other.fetchingShopsFailure, fetchingShopsFailure) ||
                const DeepCollectionEquality().equals(
                    other.fetchingShopsFailure, fetchingShopsFailure)) &&
            (identical(other.shops, shops) ||
                const DeepCollectionEquality().equals(other.shops, shops)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(hasLoaded) ^
      const DeepCollectionEquality().hash(fetchingShopsFailure) ^
      const DeepCollectionEquality().hash(shops);

  @JsonKey(ignore: true)
  @override
  _$FetchNewShopsStateCopyWith<_FetchNewShopsState> get copyWith =>
      __$FetchNewShopsStateCopyWithImpl<_FetchNewShopsState>(this, _$identity);
}

abstract class _FetchNewShopsState implements FetchNewShopsState {
  const factory _FetchNewShopsState(
      {bool isLoading,
      bool hasLoaded,
      Failure fetchingShopsFailure,
      List<Shop> shops}) = _$_FetchNewShopsState;

  @override
  bool get isLoading;
  @override
  bool get hasLoaded;
  @override
  Failure get fetchingShopsFailure;
  @override
  List<Shop> get shops;
  @override
  @JsonKey(ignore: true)
  _$FetchNewShopsStateCopyWith<_FetchNewShopsState> get copyWith;
}
