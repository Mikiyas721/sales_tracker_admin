part of 'fetch_total_stats_bloc.dart';

abstract class FetchTotalStatsEvent extends BlocEvent<FetchTotalStatsState> {}

class FetchTotalStatsLoadingEvent extends FetchTotalStatsEvent {
  @override
  Stream<FetchTotalStatsState> handle(
      FetchTotalStatsState currentState) async* {
    yield currentState.copyWith(isLoading: true);
  }
}

class FetchTotalStatsIndexChangedEvent extends FetchTotalStatsEvent {
  final int index;

  FetchTotalStatsIndexChangedEvent(this.index);

  @override
  Stream<FetchTotalStatsState> handle(
      FetchTotalStatsState currentState) async* {
    yield currentState.copyWith(activeTabIndex: index);
  }
}

class FetchTotalStatsLoadingSucceededEvent extends FetchTotalStatsEvent {
  final List<CardTransaction> cards;
  final List<CashTransaction> cash;

  FetchTotalStatsLoadingSucceededEvent(this.cards,this.cash);

  @override
  Stream<FetchTotalStatsState> handle(
      FetchTotalStatsState currentState) async* {
    yield currentState.copyWith(
      cards: cards,
      cash: cash,
      loadingError: none(),
      isLoading: false,
    );
  }
}

class FetchTotalStatsLoadingFailedEvent extends FetchTotalStatsEvent {
  final Failure loadingFailure;

  FetchTotalStatsLoadingFailedEvent(this.loadingFailure);

  @override
  Stream<FetchTotalStatsState> handle(
      FetchTotalStatsState currentState) async* {
    yield currentState.copyWith(isLoading: false,
      loadingError: Failure.getFailureWithOption(loadingFailure),);
  }
}
