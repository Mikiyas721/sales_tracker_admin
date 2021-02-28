part of 'fetch_total_stats_bloc.dart';

@freezed
abstract class FetchTotalStatsState extends BlocState
    with _$FetchTotalStatsState {
  const factory FetchTotalStatsState({
    List<Stats> detailedData,
    int activeTabIndex,
    Failure loadingError,
    bool isLoading,
    bool hasLoaded
  }) = _FetchTotalStatsState;

  factory FetchTotalStatsState.initial()=>
      FetchTotalStatsState(hasLoaded: false,
          isLoading: false,
          detailedData: null,
          loadingError: null,
          activeTabIndex: 0);
}
