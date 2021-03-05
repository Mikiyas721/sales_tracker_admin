// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'cash_transactions_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CashTransactionsStateTearOff {
  const _$CashTransactionsStateTearOff();

// ignore: unused_element
  _CashTransactionsState call(
      {List<CashTransaction> cash,
      Option<Failure> fetchingFundsFailure,
      bool isLoading}) {
    return _CashTransactionsState(
      cash: cash,
      fetchingFundsFailure: fetchingFundsFailure,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CashTransactionsState = _$CashTransactionsStateTearOff();

/// @nodoc
mixin _$CashTransactionsState {
  List<CashTransaction> get cash;
  Option<Failure> get fetchingFundsFailure;
  bool get isLoading;

  @JsonKey(ignore: true)
  $CashTransactionsStateCopyWith<CashTransactionsState> get copyWith;
}

/// @nodoc
abstract class $CashTransactionsStateCopyWith<$Res> {
  factory $CashTransactionsStateCopyWith(CashTransactionsState value,
          $Res Function(CashTransactionsState) then) =
      _$CashTransactionsStateCopyWithImpl<$Res>;
  $Res call(
      {List<CashTransaction> cash,
      Option<Failure> fetchingFundsFailure,
      bool isLoading});
}

/// @nodoc
class _$CashTransactionsStateCopyWithImpl<$Res>
    implements $CashTransactionsStateCopyWith<$Res> {
  _$CashTransactionsStateCopyWithImpl(this._value, this._then);

  final CashTransactionsState _value;
  // ignore: unused_field
  final $Res Function(CashTransactionsState) _then;

  @override
  $Res call({
    Object cash = freezed,
    Object fetchingFundsFailure = freezed,
    Object isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      cash: cash == freezed ? _value.cash : cash as List<CashTransaction>,
      fetchingFundsFailure: fetchingFundsFailure == freezed
          ? _value.fetchingFundsFailure
          : fetchingFundsFailure as Option<Failure>,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

/// @nodoc
abstract class _$CashTransactionsStateCopyWith<$Res>
    implements $CashTransactionsStateCopyWith<$Res> {
  factory _$CashTransactionsStateCopyWith(_CashTransactionsState value,
          $Res Function(_CashTransactionsState) then) =
      __$CashTransactionsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<CashTransaction> cash,
      Option<Failure> fetchingFundsFailure,
      bool isLoading});
}

/// @nodoc
class __$CashTransactionsStateCopyWithImpl<$Res>
    extends _$CashTransactionsStateCopyWithImpl<$Res>
    implements _$CashTransactionsStateCopyWith<$Res> {
  __$CashTransactionsStateCopyWithImpl(_CashTransactionsState _value,
      $Res Function(_CashTransactionsState) _then)
      : super(_value, (v) => _then(v as _CashTransactionsState));

  @override
  _CashTransactionsState get _value => super._value as _CashTransactionsState;

  @override
  $Res call({
    Object cash = freezed,
    Object fetchingFundsFailure = freezed,
    Object isLoading = freezed,
  }) {
    return _then(_CashTransactionsState(
      cash: cash == freezed ? _value.cash : cash as List<CashTransaction>,
      fetchingFundsFailure: fetchingFundsFailure == freezed
          ? _value.fetchingFundsFailure
          : fetchingFundsFailure as Option<Failure>,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

/// @nodoc
class _$_CashTransactionsState implements _CashTransactionsState {
  const _$_CashTransactionsState(
      {this.cash, this.fetchingFundsFailure, this.isLoading});

  @override
  final List<CashTransaction> cash;
  @override
  final Option<Failure> fetchingFundsFailure;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'CashTransactionsState(cash: $cash, fetchingFundsFailure: $fetchingFundsFailure, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CashTransactionsState &&
            (identical(other.cash, cash) ||
                const DeepCollectionEquality().equals(other.cash, cash)) &&
            (identical(other.fetchingFundsFailure, fetchingFundsFailure) ||
                const DeepCollectionEquality().equals(
                    other.fetchingFundsFailure, fetchingFundsFailure)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(cash) ^
      const DeepCollectionEquality().hash(fetchingFundsFailure) ^
      const DeepCollectionEquality().hash(isLoading);

  @JsonKey(ignore: true)
  @override
  _$CashTransactionsStateCopyWith<_CashTransactionsState> get copyWith =>
      __$CashTransactionsStateCopyWithImpl<_CashTransactionsState>(
          this, _$identity);
}

abstract class _CashTransactionsState implements CashTransactionsState {
  const factory _CashTransactionsState(
      {List<CashTransaction> cash,
      Option<Failure> fetchingFundsFailure,
      bool isLoading}) = _$_CashTransactionsState;

  @override
  List<CashTransaction> get cash;
  @override
  Option<Failure> get fetchingFundsFailure;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$CashTransactionsStateCopyWith<_CashTransactionsState> get copyWith;
}
