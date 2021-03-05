part of 'fetch_salesperson_stats_bloc.dart';

abstract class FetchSalespersonStatsEvent
    extends BlocEvent<FetchSalespersonStatsState> {}

class FetchSalespersonStatsLoadingEvent extends FetchSalespersonStatsEvent {
  @override
  Stream<FetchSalespersonStatsState> handle(
      FetchSalespersonStatsState currentState) async* {
    yield currentState.copyWith(isLoading: true);
  }
}

class FetchSalespersonStatsIndexChangedEvent
    extends FetchSalespersonStatsEvent {
  final int index;

  FetchSalespersonStatsIndexChangedEvent(this.index);

  @override
  Stream<FetchSalespersonStatsState> handle(
      FetchSalespersonStatsState currentState) async* {
    yield currentState.copyWith(activeTabIndex: index);
  }
}

class FetchSalespersonStatsLoadingSucceededEvent
    extends FetchSalespersonStatsEvent {
  final List<CardTransaction> cards;
  final List<CashTransaction> cash;

  FetchSalespersonStatsLoadingSucceededEvent(this.cards, this.cash);

  @override
  Stream<FetchSalespersonStatsState> handle(
      FetchSalespersonStatsState currentState) async* {
    yield currentState.copyWith(
      cards: cards,
      cash: cash,
      loadingError: none(),
      isLoading: false,
    );
  }
}

class FetchSalespersonStatsLoadingFailedEvent
    extends FetchSalespersonStatsEvent {
  final Failure loadingFailure;

  FetchSalespersonStatsLoadingFailedEvent(this.loadingFailure);

  @override
  Stream<FetchSalespersonStatsState> handle(
      FetchSalespersonStatsState currentState) async* {
    yield currentState.copyWith(
      isLoading: false,
      loadingError: Failure.getFailureWithOption(loadingFailure),
    );
  }
}
