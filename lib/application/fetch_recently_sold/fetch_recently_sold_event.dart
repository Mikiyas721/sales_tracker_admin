part of 'fetch_recently_sold_bloc.dart';

abstract class FetchRecentlySoldEvent
    extends BlocEvent<FetchRecentlySoldState> {}

class FetchingRecentlySoldEvent extends FetchRecentlySoldEvent {
  @override
  Stream<FetchRecentlySoldState> handle(
      FetchRecentlySoldState currentState) async* {
    yield currentState.copyWith(isLoading: true);
  }
}

class FetchingRecentlySoldSucceededEvent extends FetchRecentlySoldEvent {
  final List<CardTransaction> sales;

  FetchingRecentlySoldSucceededEvent(this.sales);

  @override
  Stream<FetchRecentlySoldState> handle(
      FetchRecentlySoldState currentState) async* {
    yield currentState.copyWith(
      sales: sales,
      fetchingSalesFailure:none(),
      isLoading: false,
    );
  }
}

class FetchingRecentlySoldFailedEvent extends FetchRecentlySoldEvent {
  final Failure loadingFailure;

  FetchingRecentlySoldFailedEvent(this.loadingFailure);

  @override
  Stream<FetchRecentlySoldState> handle(
      FetchRecentlySoldState currentState) async* {
    yield currentState.copyWith(
      isLoading: false,
      fetchingSalesFailure: Failure.getFailureWithOption(loadingFailure),
    );
  }
}
