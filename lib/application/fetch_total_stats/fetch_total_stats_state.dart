part of 'fetch_total_stats_bloc.dart';

@freezed
abstract class FetchTotalStatsState extends BlocState
    with _$FetchTotalStatsState {
  const factory FetchTotalStatsState({
    List<CardTransaction> cards,
    List<CashTransaction> cash,
    int activeTabIndex,
    Option<Failure> loadingError,
    bool isLoading,
  }) = _FetchTotalStatsState;

  factory FetchTotalStatsState.initial() => FetchTotalStatsState(
        cards: [],
        cash: [],
        activeTabIndex: 0,
        loadingError: none(),
        isLoading: false,
      );
}
