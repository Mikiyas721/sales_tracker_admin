part of 'fetch_salesperson_stats_bloc.dart';

@freezed
abstract class FetchSalespersonStatsState extends BlocState
    with _$FetchSalespersonStatsState {
  const factory FetchSalespersonStatsState({
    Stats stats,
    int activeTabIndex,
    Failure loadingError,
    bool isLoading,
    bool hasLoaded,
  }) = _FetchSalespersonStatsState;

  factory FetchSalespersonStatsState.initial() => FetchSalespersonStatsState(
        hasLoaded: false,
        isLoading: false,
        stats: null,
        loadingError: null,
        activeTabIndex: 0,
      );
}
