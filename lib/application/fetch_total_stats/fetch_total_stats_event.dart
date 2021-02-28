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
  final List<Stats> stats;

  FetchTotalStatsLoadingSucceededEvent(this.stats);

  @override
  Stream<FetchTotalStatsState> handle(
      FetchTotalStatsState currentState) async* {
    yield currentState.copyWith(
        isLoading: false, hasLoaded: true, detailedData: stats);
  }
}

class FetchTotalStatsLoadingFailedEvent extends FetchTotalStatsEvent {
  final Failure loadingFailure;

  FetchTotalStatsLoadingFailedEvent(this.loadingFailure);

  @override
  Stream<FetchTotalStatsState> handle(
      FetchTotalStatsState currentState) async* {
    yield currentState.copyWith(
        isLoading: false, loadingError: loadingFailure);
  }
}
