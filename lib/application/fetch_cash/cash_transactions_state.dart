part of 'cash_transactions_bloc.dart';

@freezed
abstract class CashTransactionsState extends BlocState with _$CashTransactionsState {
  const factory CashTransactionsState({
    List<CashTransaction> cash,
    Option<Failure> fetchingFundsFailure,
    bool isLoading,
  }) = _CashTransactionsState;

  factory CashTransactionsState.initial() => CashTransactionsState(
        cash: [],
        fetchingFundsFailure: none(),
        isLoading: false,
      );
}
