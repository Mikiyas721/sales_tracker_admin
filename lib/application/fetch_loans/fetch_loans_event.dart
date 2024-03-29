part of 'fetch_loans_bloc.dart';

abstract class FetchLoansEvent extends BlocEvent<FetchLoansState> {}

class FetchingLoansEvent extends FetchLoansEvent {
  @override
  Stream<FetchLoansState> handle(FetchLoansState currentState) async* {
    yield currentState.copyWith(isLoading: true);
  }
}

class FetchingLoansSucceededEvent extends FetchLoansEvent {
  final List<Salesperson> sales;

  FetchingLoansSucceededEvent(this.sales);

  @override
  Stream<FetchLoansState> handle(FetchLoansState currentState) async* {
    yield currentState.copyWith(
      isLoading: false,
      fetchingSalesFailure: none(),
      sales: sales,
    );
  }
}

class FetchingLoansFailedEvent extends FetchLoansEvent {
  final Failure loadingFailure;

  FetchingLoansFailedEvent(this.loadingFailure);

  @override
  Stream<FetchLoansState> handle(FetchLoansState currentState) async* {
    yield currentState.copyWith(
        isLoading: false,
        fetchingSalesFailure: Failure.getFailureWithOption(loadingFailure));
  }
}
