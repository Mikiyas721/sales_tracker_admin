part of 'fetch_loans_bloc.dart';

abstract class FetchLoansEvent extends BlocEvent<FetchLoansState> {}

class FetchingSalesEvent extends FetchLoansEvent {
  @override
  Stream<FetchLoansState> handle(FetchLoansState currentState) async* {
    yield currentState.copyWith(isLoading: true);
  }
}

class FetchingSalesSucceededEvent extends FetchLoansEvent {
  final List<SaleTransaction> sales;

  FetchingSalesSucceededEvent(this.sales);

  @override
  Stream<FetchLoansState> handle(FetchLoansState currentState) async* {
    yield currentState.copyWith(
        isLoading: false, hasLoaded: true, sales: sales);
  }
}

class FetchingSalesFailedEvent extends FetchLoansEvent {
  final Failure loadingFailure;

  FetchingSalesFailedEvent(this.loadingFailure);

  @override
  Stream<FetchLoansState> handle(FetchLoansState currentState) async* {
    yield currentState.copyWith(
        isLoading: false, fetchingSalesFailure: loadingFailure);
  }
}
