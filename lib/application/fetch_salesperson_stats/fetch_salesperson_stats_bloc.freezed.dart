// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'fetch_salesperson_stats_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FetchSalespersonStatsStateTearOff {
  const _$FetchSalespersonStatsStateTearOff();

// ignore: unused_element
  _FetchSalespersonStatsState call(
      {Stats stats,
      int activeTabIndex,
      Failure loadingError,
      bool isLoading,
      bool hasLoaded}) {
    return _FetchSalespersonStatsState(
      stats: stats,
      activeTabIndex: activeTabIndex,
      loadingError: loadingError,
      isLoading: isLoading,
      hasLoaded: hasLoaded,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FetchSalespersonStatsState = _$FetchSalespersonStatsStateTearOff();

/// @nodoc
mixin _$FetchSalespersonStatsState {
  Stats get stats;
  int get activeTabIndex;
  Failure get loadingError;
  bool get isLoading;
  bool get hasLoaded;

  @JsonKey(ignore: true)
  $FetchSalespersonStatsStateCopyWith<FetchSalespersonStatsState> get copyWith;
}

/// @nodoc
abstract class $FetchSalespersonStatsStateCopyWith<$Res> {
  factory $FetchSalespersonStatsStateCopyWith(FetchSalespersonStatsState value,
          $Res Function(FetchSalespersonStatsState) then) =
      _$FetchSalespersonStatsStateCopyWithImpl<$Res>;
  $Res call(
      {Stats stats,
      int activeTabIndex,
      Failure loadingError,
      bool isLoading,
      bool hasLoaded});
}

/// @nodoc
class _$FetchSalespersonStatsStateCopyWithImpl<$Res>
    implements $FetchSalespersonStatsStateCopyWith<$Res> {
  _$FetchSalespersonStatsStateCopyWithImpl(this._value, this._then);

  final FetchSalespersonStatsState _value;
  // ignore: unused_field
  final $Res Function(FetchSalespersonStatsState) _then;

  @override
  $Res call({
    Object stats = freezed,
    Object activeTabIndex = freezed,
    Object loadingError = freezed,
    Object isLoading = freezed,
    Object hasLoaded = freezed,
  }) {
    return _then(_value.copyWith(
      stats: stats == freezed ? _value.stats : stats as Stats,
      activeTabIndex: activeTabIndex == freezed
          ? _value.activeTabIndex
          : activeTabIndex as int,
      loadingError: loadingError == freezed
          ? _value.loadingError
          : loadingError as Failure,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      hasLoaded: hasLoaded == freezed ? _value.hasLoaded : hasLoaded as bool,
    ));
  }
}

/// @nodoc
abstract class _$FetchSalespersonStatsStateCopyWith<$Res>
    implements $FetchSalespersonStatsStateCopyWith<$Res> {
  factory _$FetchSalespersonStatsStateCopyWith(
          _FetchSalespersonStatsState value,
          $Res Function(_FetchSalespersonStatsState) then) =
      __$FetchSalespersonStatsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Stats stats,
      int activeTabIndex,
      Failure loadingError,
      bool isLoading,
      bool hasLoaded});
}

/// @nodoc
class __$FetchSalespersonStatsStateCopyWithImpl<$Res>
    extends _$FetchSalespersonStatsStateCopyWithImpl<$Res>
    implements _$FetchSalespersonStatsStateCopyWith<$Res> {
  __$FetchSalespersonStatsStateCopyWithImpl(_FetchSalespersonStatsState _value,
      $Res Function(_FetchSalespersonStatsState) _then)
      : super(_value, (v) => _then(v as _FetchSalespersonStatsState));

  @override
  _FetchSalespersonStatsState get _value =>
      super._value as _FetchSalespersonStatsState;

  @override
  $Res call({
    Object stats = freezed,
    Object activeTabIndex = freezed,
    Object loadingError = freezed,
    Object isLoading = freezed,
    Object hasLoaded = freezed,
  }) {
    return _then(_FetchSalespersonStatsState(
      stats: stats == freezed ? _value.stats : stats as Stats,
      activeTabIndex: activeTabIndex == freezed
          ? _value.activeTabIndex
          : activeTabIndex as int,
      loadingError: loadingError == freezed
          ? _value.loadingError
          : loadingError as Failure,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      hasLoaded: hasLoaded == freezed ? _value.hasLoaded : hasLoaded as bool,
    ));
  }
}

/// @nodoc
class _$_FetchSalespersonStatsState implements _FetchSalespersonStatsState {
  const _$_FetchSalespersonStatsState(
      {this.stats,
      this.activeTabIndex,
      this.loadingError,
      this.isLoading,
      this.hasLoaded});

  @override
  final Stats stats;
  @override
  final int activeTabIndex;
  @override
  final Failure loadingError;
  @override
  final bool isLoading;
  @override
  final bool hasLoaded;

  @override
  String toString() {
    return 'FetchSalespersonStatsState(stats: $stats, activeTabIndex: $activeTabIndex, loadingError: $loadingError, isLoading: $isLoading, hasLoaded: $hasLoaded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FetchSalespersonStatsState &&
            (identical(other.stats, stats) ||
                const DeepCollectionEquality().equals(other.stats, stats)) &&
            (identical(other.activeTabIndex, activeTabIndex) ||
                const DeepCollectionEquality()
                    .equals(other.activeTabIndex, activeTabIndex)) &&
            (identical(other.loadingError, loadingError) ||
                const DeepCollectionEquality()
                    .equals(other.loadingError, loadingError)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.hasLoaded, hasLoaded) ||
                const DeepCollectionEquality()
                    .equals(other.hasLoaded, hasLoaded)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(stats) ^
      const DeepCollectionEquality().hash(activeTabIndex) ^
      const DeepCollectionEquality().hash(loadingError) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(hasLoaded);

  @JsonKey(ignore: true)
  @override
  _$FetchSalespersonStatsStateCopyWith<_FetchSalespersonStatsState>
      get copyWith => __$FetchSalespersonStatsStateCopyWithImpl<
          _FetchSalespersonStatsState>(this, _$identity);
}

abstract class _FetchSalespersonStatsState
    implements FetchSalespersonStatsState {
  const factory _FetchSalespersonStatsState(
      {Stats stats,
      int activeTabIndex,
      Failure loadingError,
      bool isLoading,
      bool hasLoaded}) = _$_FetchSalespersonStatsState;

  @override
  Stats get stats;
  @override
  int get activeTabIndex;
  @override
  Failure get loadingError;
  @override
  bool get isLoading;
  @override
  bool get hasLoaded;
  @override
  @JsonKey(ignore: true)
  _$FetchSalespersonStatsStateCopyWith<_FetchSalespersonStatsState>
      get copyWith;
}
