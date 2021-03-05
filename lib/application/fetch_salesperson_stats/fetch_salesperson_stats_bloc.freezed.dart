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
      {List<CardTransaction> cards,
      List<CashTransaction> cash,
      int activeTabIndex,
      Option<Failure> loadingError,
      bool isLoading}) {
    return _FetchSalespersonStatsState(
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
const $FetchSalespersonStatsState = _$FetchSalespersonStatsStateTearOff();

/// @nodoc
mixin _$FetchSalespersonStatsState {
  List<CardTransaction> get cards;
  List<CashTransaction> get cash;
  int get activeTabIndex;
  Option<Failure> get loadingError;
  bool get isLoading;

  @JsonKey(ignore: true)
  $FetchSalespersonStatsStateCopyWith<FetchSalespersonStatsState> get copyWith;
}

/// @nodoc
abstract class $FetchSalespersonStatsStateCopyWith<$Res> {
  factory $FetchSalespersonStatsStateCopyWith(FetchSalespersonStatsState value,
          $Res Function(FetchSalespersonStatsState) then) =
      _$FetchSalespersonStatsStateCopyWithImpl<$Res>;
  $Res call(
      {List<CardTransaction> cards,
      List<CashTransaction> cash,
      int activeTabIndex,
      Option<Failure> loadingError,
      bool isLoading});
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
abstract class _$FetchSalespersonStatsStateCopyWith<$Res>
    implements $FetchSalespersonStatsStateCopyWith<$Res> {
  factory _$FetchSalespersonStatsStateCopyWith(
          _FetchSalespersonStatsState value,
          $Res Function(_FetchSalespersonStatsState) then) =
      __$FetchSalespersonStatsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<CardTransaction> cards,
      List<CashTransaction> cash,
      int activeTabIndex,
      Option<Failure> loadingError,
      bool isLoading});
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
    Object cards = freezed,
    Object cash = freezed,
    Object activeTabIndex = freezed,
    Object loadingError = freezed,
    Object isLoading = freezed,
  }) {
    return _then(_FetchSalespersonStatsState(
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
class _$_FetchSalespersonStatsState implements _FetchSalespersonStatsState {
  const _$_FetchSalespersonStatsState(
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
    return 'FetchSalespersonStatsState(cards: $cards, cash: $cash, activeTabIndex: $activeTabIndex, loadingError: $loadingError, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FetchSalespersonStatsState &&
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
  _$FetchSalespersonStatsStateCopyWith<_FetchSalespersonStatsState>
      get copyWith => __$FetchSalespersonStatsStateCopyWithImpl<
          _FetchSalespersonStatsState>(this, _$identity);
}

abstract class _FetchSalespersonStatsState
    implements FetchSalespersonStatsState {
  const factory _FetchSalespersonStatsState(
      {List<CardTransaction> cards,
      List<CashTransaction> cash,
      int activeTabIndex,
      Option<Failure> loadingError,
      bool isLoading}) = _$_FetchSalespersonStatsState;

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
  _$FetchSalespersonStatsStateCopyWith<_FetchSalespersonStatsState>
      get copyWith;
}
