part of 'cash_transactions_bloc.dart';

abstract class CashTransactionsEvent extends BlocEvent<CashTransactionsState> {}

class FetchingCashEvent extends CashTransactionsEvent {
  @override
  Stream<CashTransactionsState> handle(CashTransactionsState currentState) async* {
    yield currentState.copyWith(isLoading: true);
  }
}
class FetchingCashSucceededEvent extends CashTransactionsEvent {
  final List<CashTransaction> cash;

  FetchingCashSucceededEvent(this.cash);

  @override
  Stream<CashTransactionsState> handle(CashTransactionsState currentState) async* {
    yield currentState.copyWith(isLoading:false,cash: cash, fetchingFundsFailure:none());
  }
}

class FetchingCashFailedEvent extends CashTransactionsEvent {
  final Failure loadingFailure;

  FetchingCashFailedEvent(this.loadingFailure);

  @override
  Stream<CashTransactionsState> handle(CashTransactionsState currentState) async* {
    yield currentState.copyWith(
        isLoading: false, fetchingFundsFailure: Failure.getFailureWithOption(loadingFailure));
  }
}
