part of 'fetch_salespeople_bloc.dart';

abstract class FetchSalespeopleEvent extends BlocEvent<FetchSalespeopleState> {}

class SalesPeopleLoadingEvent extends FetchSalespeopleEvent {
  @override
  Stream<FetchSalespeopleState> handle(FetchSalespeopleState currentState) async* {
    yield currentState.copyWith(isLoading: true);
  }
}

class SalesPeopleLoadingSucceededEvent extends FetchSalespeopleEvent {
  final List<SalesPerson> salesPerson;

  SalesPeopleLoadingSucceededEvent(this.salesPerson);

  @override
  Stream<FetchSalespeopleState> handle(FetchSalespeopleState currentState) async* {
    yield currentState.copyWith(isLoading:false,hasLoaded: true, salespeople: salesPerson);
  }
}

class SalesPeopleLoadingFailedEvent extends FetchSalespeopleEvent {
  final Failure loadingFailure;

  SalesPeopleLoadingFailedEvent(this.loadingFailure);

  @override
  Stream<FetchSalespeopleState> handle(FetchSalespeopleState currentState) async* {
    yield currentState.copyWith(
        isLoading: false, salespeopleLoadingFailure: loadingFailure);
  }
}

