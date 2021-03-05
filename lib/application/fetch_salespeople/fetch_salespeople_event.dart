part of 'fetch_salespeople_bloc.dart';

abstract class FetchSalespeopleEvent extends BlocEvent<FetchSalespeopleState> {}

class SalespeopleLoadingEvent extends FetchSalespeopleEvent {
  @override
  Stream<FetchSalespeopleState> handle(
      FetchSalespeopleState currentState) async* {
    yield currentState.copyWith(isLoading: true);
  }
}

class SalespeopleLoadingSucceededEvent extends FetchSalespeopleEvent {
  final List<Salesperson> salespeople;

  SalespeopleLoadingSucceededEvent(this.salespeople);

  @override
  Stream<FetchSalespeopleState> handle(
      FetchSalespeopleState currentState) async* {
    yield currentState.copyWith(
      salespeople: salespeople,
      salespeopleLoadingFailure: none(),
      isLoading: false,
    );
  }
}

class SalespeopleLoadingFailedEvent extends FetchSalespeopleEvent {
  final Failure loadingFailure;

  SalespeopleLoadingFailedEvent(this.loadingFailure);

  @override
  Stream<FetchSalespeopleState> handle(
      FetchSalespeopleState currentState) async* {
    yield currentState.copyWith(
      isLoading: false,
      salespeopleLoadingFailure: Failure.getFailureWithOption(loadingFailure),
    );
  }
}
