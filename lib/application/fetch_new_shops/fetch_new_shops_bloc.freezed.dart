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
      {List<Shop> shops,
      Option<Failure> fetchingShopsFailure,
      bool isLoading}) {
    return _FetchNewShopsState(
      shops: shops,
      fetchingShopsFailure: fetchingShopsFailure,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FetchNewShopsState = _$FetchNewShopsStateTearOff();

/// @nodoc
mixin _$FetchNewShopsState {
  List<Shop> get shops;
  Option<Failure> get fetchingShopsFailure;
  bool get isLoading;

  @JsonKey(ignore: true)
  $FetchNewShopsStateCopyWith<FetchNewShopsState> get copyWith;
}

/// @nodoc
abstract class $FetchNewShopsStateCopyWith<$Res> {
  factory $FetchNewShopsStateCopyWith(
          FetchNewShopsState value, $Res Function(FetchNewShopsState) then) =
      _$FetchNewShopsStateCopyWithImpl<$Res>;
  $Res call(
      {List<Shop> shops, Option<Failure> fetchingShopsFailure, bool isLoading});
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
    Object shops = freezed,
    Object fetchingShopsFailure = freezed,
    Object isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      shops: shops == freezed ? _value.shops : shops as List<Shop>,
      fetchingShopsFailure: fetchingShopsFailure == freezed
          ? _value.fetchingShopsFailure
          : fetchingShopsFailure as Option<Failure>,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
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
      {List<Shop> shops, Option<Failure> fetchingShopsFailure, bool isLoading});
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
    Object shops = freezed,
    Object fetchingShopsFailure = freezed,
    Object isLoading = freezed,
  }) {
    return _then(_FetchNewShopsState(
      shops: shops == freezed ? _value.shops : shops as List<Shop>,
      fetchingShopsFailure: fetchingShopsFailure == freezed
          ? _value.fetchingShopsFailure
          : fetchingShopsFailure as Option<Failure>,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

/// @nodoc
class _$_FetchNewShopsState implements _FetchNewShopsState {
  const _$_FetchNewShopsState(
      {this.shops, this.fetchingShopsFailure, this.isLoading});

  @override
  final List<Shop> shops;
  @override
  final Option<Failure> fetchingShopsFailure;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'FetchNewShopsState(shops: $shops, fetchingShopsFailure: $fetchingShopsFailure, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FetchNewShopsState &&
            (identical(other.shops, shops) ||
                const DeepCollectionEquality().equals(other.shops, shops)) &&
            (identical(other.fetchingShopsFailure, fetchingShopsFailure) ||
                const DeepCollectionEquality().equals(
                    other.fetchingShopsFailure, fetchingShopsFailure)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(shops) ^
      const DeepCollectionEquality().hash(fetchingShopsFailure) ^
      const DeepCollectionEquality().hash(isLoading);

  @JsonKey(ignore: true)
  @override
  _$FetchNewShopsStateCopyWith<_FetchNewShopsState> get copyWith =>
      __$FetchNewShopsStateCopyWithImpl<_FetchNewShopsState>(this, _$identity);
}

abstract class _FetchNewShopsState implements FetchNewShopsState {
  const factory _FetchNewShopsState(
      {List<Shop> shops,
      Option<Failure> fetchingShopsFailure,
      bool isLoading}) = _$_FetchNewShopsState;

  @override
  List<Shop> get shops;
  @override
  Option<Failure> get fetchingShopsFailure;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$FetchNewShopsStateCopyWith<_FetchNewShopsState> get copyWith;
}
