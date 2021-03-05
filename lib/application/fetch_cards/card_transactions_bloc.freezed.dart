// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'card_transactions_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CardTransactionsStateTearOff {
  const _$CardTransactionsStateTearOff();

// ignore: unused_element
  _CardTransactionsState call(
      {List<CardTransaction> cards,
      Option<Failure> fetchingSalesFailure,
      bool isLoading}) {
    return _CardTransactionsState(
      cards: cards,
      fetchingSalesFailure: fetchingSalesFailure,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CardTransactionsState = _$CardTransactionsStateTearOff();

/// @nodoc
mixin _$CardTransactionsState {
  List<CardTransaction> get cards;
  Option<Failure> get fetchingSalesFailure;
  bool get isLoading;

  @JsonKey(ignore: true)
  $CardTransactionsStateCopyWith<CardTransactionsState> get copyWith;
}

/// @nodoc
abstract class $CardTransactionsStateCopyWith<$Res> {
  factory $CardTransactionsStateCopyWith(CardTransactionsState value,
          $Res Function(CardTransactionsState) then) =
      _$CardTransactionsStateCopyWithImpl<$Res>;
  $Res call(
      {List<CardTransaction> cards,
      Option<Failure> fetchingSalesFailure,
      bool isLoading});
}

/// @nodoc
class _$CardTransactionsStateCopyWithImpl<$Res>
    implements $CardTransactionsStateCopyWith<$Res> {
  _$CardTransactionsStateCopyWithImpl(this._value, this._then);

  final CardTransactionsState _value;
  // ignore: unused_field
  final $Res Function(CardTransactionsState) _then;

  @override
  $Res call({
    Object cards = freezed,
    Object fetchingSalesFailure = freezed,
    Object isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      cards: cards == freezed ? _value.cards : cards as List<CardTransaction>,
      fetchingSalesFailure: fetchingSalesFailure == freezed
          ? _value.fetchingSalesFailure
          : fetchingSalesFailure as Option<Failure>,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

/// @nodoc
abstract class _$CardTransactionsStateCopyWith<$Res>
    implements $CardTransactionsStateCopyWith<$Res> {
  factory _$CardTransactionsStateCopyWith(_CardTransactionsState value,
          $Res Function(_CardTransactionsState) then) =
      __$CardTransactionsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<CardTransaction> cards,
      Option<Failure> fetchingSalesFailure,
      bool isLoading});
}

/// @nodoc
class __$CardTransactionsStateCopyWithImpl<$Res>
    extends _$CardTransactionsStateCopyWithImpl<$Res>
    implements _$CardTransactionsStateCopyWith<$Res> {
  __$CardTransactionsStateCopyWithImpl(_CardTransactionsState _value,
      $Res Function(_CardTransactionsState) _then)
      : super(_value, (v) => _then(v as _CardTransactionsState));

  @override
  _CardTransactionsState get _value => super._value as _CardTransactionsState;

  @override
  $Res call({
    Object cards = freezed,
    Object fetchingSalesFailure = freezed,
    Object isLoading = freezed,
  }) {
    return _then(_CardTransactionsState(
      cards: cards == freezed ? _value.cards : cards as List<CardTransaction>,
      fetchingSalesFailure: fetchingSalesFailure == freezed
          ? _value.fetchingSalesFailure
          : fetchingSalesFailure as Option<Failure>,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

/// @nodoc
class _$_CardTransactionsState implements _CardTransactionsState {
  const _$_CardTransactionsState(
      {this.cards, this.fetchingSalesFailure, this.isLoading});

  @override
  final List<CardTransaction> cards;
  @override
  final Option<Failure> fetchingSalesFailure;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'CardTransactionsState(cards: $cards, fetchingSalesFailure: $fetchingSalesFailure, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CardTransactionsState &&
            (identical(other.cards, cards) ||
                const DeepCollectionEquality().equals(other.cards, cards)) &&
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
      const DeepCollectionEquality().hash(cards) ^
      const DeepCollectionEquality().hash(fetchingSalesFailure) ^
      const DeepCollectionEquality().hash(isLoading);

  @JsonKey(ignore: true)
  @override
  _$CardTransactionsStateCopyWith<_CardTransactionsState> get copyWith =>
      __$CardTransactionsStateCopyWithImpl<_CardTransactionsState>(
          this, _$identity);
}

abstract class _CardTransactionsState implements CardTransactionsState {
  const factory _CardTransactionsState(
      {List<CardTransaction> cards,
      Option<Failure> fetchingSalesFailure,
      bool isLoading}) = _$_CardTransactionsState;

  @override
  List<CardTransaction> get cards;
  @override
  Option<Failure> get fetchingSalesFailure;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$CardTransactionsStateCopyWith<_CardTransactionsState> get copyWith;
}
