part of 'fetch_salesperson_stats_bloc.dart';

@freezed
abstract class FetchSalespersonStatsState extends BlocState
    with _$FetchSalespersonStatsState {
  const factory FetchSalespersonStatsState({
    List<Stats> detailedData,
    int activeTabIndex,
    Failure loadingError,
    bool isLoading,
    bool hasLoaded,
  }) = _FetchSalespersonStatsState;

  factory FetchSalespersonStatsState.initial() => FetchSalespersonStatsState(
        hasLoaded: false,
        isLoading: false,
        detailedData: null,
        loadingError: null,
        activeTabIndex: 0,
      );
}
