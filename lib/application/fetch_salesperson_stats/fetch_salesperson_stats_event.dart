part of 'fetch_salesperson_stats_bloc.dart';

abstract class FetchSalespersonStatsEvent extends BlocEvent<FetchSalespersonStatsState> {
}

class FetchTotalStatsLoadingEvent extends FetchSalespersonStatsEvent {
  @override
  Stream<FetchSalespersonStatsState> handle(
      FetchSalespersonStatsState currentState) async* {
    yield currentState.copyWith(isLoading: true);
  }
}

class FetchTotalStatsIndexChangedEvent extends FetchSalespersonStatsEvent {
  final int index;

  FetchTotalStatsIndexChangedEvent(this.index);

  @override
  Stream<FetchSalespersonStatsState> handle(
      FetchSalespersonStatsState currentState) async* {
    yield currentState.copyWith(activeTabIndex: index);
  }
}

class FetchTotalStatsLoadingSucceededEvent extends FetchSalespersonStatsEvent {
  final List<Stats> stats;

  FetchTotalStatsLoadingSucceededEvent(this.stats);

  @override
  Stream<FetchSalespersonStatsState> handle(
      FetchSalespersonStatsState currentState) async* {
    yield currentState.copyWith(
        isLoading: false, hasLoaded: true, detailedData: stats);
  }
}

class FetchTotalStatsLoadingFailedEvent extends FetchSalespersonStatsEvent {
  final Failure loadingFailure;

  FetchTotalStatsLoadingFailedEvent(this.loadingFailure);

  @override
  Stream<FetchSalespersonStatsState> handle(
      FetchSalespersonStatsState currentState) async* {
    yield currentState.copyWith(
        isLoading: false, loadingError: loadingFailure);
  }
}

