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
      {List<CardTransaction> cards,
      List<CashTransaction> cash,
      int activeTabIndex,
      Option<Failure> loadingError,
      bool isLoading}) {
    return _FetchTotalStatsState(
      cards: cards,
      cash: cash,
      activeTabIndex: activeTabIndex,
      loadingError: loadingError,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FetchTotalStatsState = _$FetchTotalStatsStateTearOff();

/// @nodoc
mixin _$FetchTotalStatsState {
  List<CardTransaction> get cards;
  List<CashTransaction> get cash;
  int get activeTabIndex;
  Option<Failure> get loadingError;
  bool get isLoading;

  @JsonKey(ignore: true)
  $FetchTotalStatsStateCopyWith<FetchTotalStatsState> get copyWith;
}

/// @nodoc
abstract class $FetchTotalStatsStateCopyWith<$Res> {
  factory $FetchTotalStatsStateCopyWith(FetchTotalStatsState value,
          $Res Function(FetchTotalStatsState) then) =
      _$FetchTotalStatsStateCopyWithImpl<$Res>;
  $Res call(
      {List<CardTransaction> cards,
      List<CashTransaction> cash,
      int activeTabIndex,
      Option<Failure> loadingError,
      bool isLoading});
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
    Object cards = freezed,
    Object cash = freezed,
    Object activeTabIndex = freezed,
    Object loadingError = freezed,
    Object isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      cards: cards == freezed ? _value.cards : cards as List<CardTransaction>,
      cash: cash == freezed ? _value.cash : cash as List<CashTransaction>,
      activeTabIndex: activeTabIndex == freezed
          ? _value.activeTabIndex
          : activeTabIndex as int,
      loadingError: loadingError == freezed
          ? _value.loadingError
          : loadingError as Option<Failure>,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
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
      {List<CardTransaction> cards,
      List<CashTransaction> cash,
      int activeTabIndex,
      Option<Failure> loadingError,
      bool isLoading});
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
    Object cards = freezed,
    Object cash = freezed,
    Object activeTabIndex = freezed,
    Object loadingError = freezed,
    Object isLoading = freezed,
  }) {
    return _then(_FetchTotalStatsState(
      cards: cards == freezed ? _value.cards : cards as List<CardTransaction>,
      cash: cash == freezed ? _value.cash : cash as List<CashTransaction>,
      activeTabIndex: activeTabIndex == freezed
          ? _value.activeTabIndex
          : activeTabIndex as int,
      loadingError: loadingError == freezed
          ? _value.loadingError
          : loadingError as Option<Failure>,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

/// @nodoc
class _$_FetchTotalStatsState implements _FetchTotalStatsState {
  const _$_FetchTotalStatsState(
      {this.cards,
      this.cash,
      this.activeTabIndex,
      this.loadingError,
      this.isLoading});

  @override
  final List<CardTransaction> cards;
  @override
  final List<CashTransaction> cash;
  @override
  final int activeTabIndex;
  @override
  final Option<Failure> loadingError;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'FetchTotalStatsState(cards: $cards, cash: $cash, activeTabIndex: $activeTabIndex, loadingError: $loadingError, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FetchTotalStatsState &&
            (identical(other.cards, cards) ||
                const DeepCollectionEquality().equals(other.cards, cards)) &&
            (identical(other.cash, cash) ||
                const DeepCollectionEquality().equals(other.cash, cash)) &&
            (identical(other.activeTabIndex, activeTabIndex) ||
                const DeepCollectionEquality()
                    .equals(other.activeTabIndex, activeTabIndex)) &&
            (identical(other.loadingError, loadingError) ||
                const DeepCollectionEquality()
                    .equals(other.loadingError, loadingError)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(cards) ^
      const DeepCollectionEquality().hash(cash) ^
      const DeepCollectionEquality().hash(activeTabIndex) ^
      const DeepCollectionEquality().hash(loadingError) ^
      const DeepCollectionEquality().hash(isLoading);

  @JsonKey(ignore: true)
  @override
  _$FetchTotalStatsStateCopyWith<_FetchTotalStatsState> get copyWith =>
      __$FetchTotalStatsStateCopyWithImpl<_FetchTotalStatsState>(
          this, _$identity);
}

abstract class _FetchTotalStatsState implements FetchTotalStatsState {
  const factory _FetchTotalStatsState(
      {List<CardTransaction> cards,
      List<CashTransaction> cash,
      int activeTabIndex,
      Option<Failure> loadingError,
      bool isLoading}) = _$_FetchTotalStatsState;

  @override
  List<CardTransaction> get cards;
  @override
  List<CashTransaction> get cash;
  @override
  int get activeTabIndex;
  @override
  Option<Failure> get loadingError;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$FetchTotalStatsStateCopyWith<_FetchTotalStatsState> get copyWith;
}
