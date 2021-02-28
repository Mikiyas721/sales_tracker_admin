// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'fetch_total_stats_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FetchTotalStatsStateTearOff {
  const _$FetchTotalStatsStateTearOff();

// ignore: unused_element
  _FetchTotalStatsState call(
      {Stats stats,
      int activeTabIndex,
      Failure loadingError,
      bool isLoading,
      bool hasLoaded}) {
    return _FetchTotalStatsState(
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
const $FetchTotalStatsState = _$FetchTotalStatsStateTearOff();

/// @nodoc
mixin _$FetchTotalStatsState {
  Stats get stats;
  int get activeTabIndex;
  Failure get loadingError;
  bool get isLoading;
  bool get hasLoaded;

  @JsonKey(ignore: true)
  $FetchTotalStatsStateCopyWith<FetchTotalStatsState> get copyWith;
}

/// @nodoc
abstract class $FetchTotalStatsStateCopyWith<$Res> {
  factory $FetchTotalStatsStateCopyWith(FetchTotalStatsState value,
          $Res Function(FetchTotalStatsState) then) =
      _$FetchTotalStatsStateCopyWithImpl<$Res>;
  $Res call(
      {Stats stats,
      int activeTabIndex,
      Failure loadingError,
      bool isLoading,
      bool hasLoaded});
}

/// @nodoc
class _$FetchTotalStatsStateCopyWithImpl<$Res>
    implements $FetchTotalStatsStateCopyWith<$Res> {
  _$FetchTotalStatsStateCopyWithImpl(this._value, this._then);

  final FetchTotalStatsState _value;
  // ignore: unused_field
  final $Res Function(FetchTotalStatsState) _then;

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
abstract class _$FetchTotalStatsStateCopyWith<$Res>
    implements $FetchTotalStatsStateCopyWith<$Res> {
  factory _$FetchTotalStatsStateCopyWith(_FetchTotalStatsState value,
          $Res Function(_FetchTotalStatsState) then) =
      __$FetchTotalStatsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Stats stats,
      int activeTabIndex,
      Failure loadingError,
      bool isLoading,
      bool hasLoaded});
}

/// @nodoc
class __$FetchTotalStatsStateCopyWithImpl<$Res>
    extends _$FetchTotalStatsStateCopyWithImpl<$Res>
    implements _$FetchTotalStatsStateCopyWith<$Res> {
  __$FetchTotalStatsStateCopyWithImpl(
      _FetchTotalStatsState _value, $Res Function(_FetchTotalStatsState) _then)
      : super(_value, (v) => _then(v as _FetchTotalStatsState));

  @override
  _FetchTotalStatsState get _value => super._value as _FetchTotalStatsState;

  @override
  $Res call({
    Object stats = freezed,
    Object activeTabIndex = freezed,
    Object loadingError = freezed,
    Object isLoading = freezed,
    Object hasLoaded = freezed,
  }) {
    return _then(_FetchTotalStatsState(
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
class _$_FetchTotalStatsState implements _FetchTotalStatsState {
  const _$_FetchTotalStatsState(
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
    return 'FetchTotalStatsState(stats: $stats, activeTabIndex: $activeTabIndex, loadingError: $loadingError, isLoading: $isLoading, hasLoaded: $hasLoaded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FetchTotalStatsState &&
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
  _$FetchTotalStatsStateCopyWith<_FetchTotalStatsState> get copyWith =>
      __$FetchTotalStatsStateCopyWithImpl<_FetchTotalStatsState>(
          this, _$identity);
}

abstract class _FetchTotalStatsState implements FetchTotalStatsState {
  const factory _FetchTotalStatsState(
      {Stats stats,
      int activeTabIndex,
      Failure loadingError,
      bool isLoading,
      bool hasLoaded}) = _$_FetchTotalStatsState;

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
  _$FetchTotalStatsStateCopyWith<_FetchTotalStatsState> get copyWith;
}
