part of 'fetch_salesperson_stats_bloc.dart';

@freezed
abstract class FetchSalespersonStatsState extends BlocState
    with _$FetchSalespersonStatsState {
  const factory FetchSalespersonStatsState({
    List<CardTransaction> cards,
    List<CashTransaction> cash,
    int activeTabIndex,
    Option<Failure> loadingError,
    bool isLoading,
  }) = _FetchSalespersonStatsState;

  factory FetchSalespersonStatsState.initial() => FetchSalespersonStatsState(
        cards: [],
        cash: [],
        activeTabIndex: 0,
        loadingError: none(),
        isLoading: false,
      );
}
