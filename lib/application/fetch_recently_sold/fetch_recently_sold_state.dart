part of 'fetch_recently_sold_bloc.dart';

@freezed
abstract class FetchRecentlySoldState extends BlocState
    with _$FetchRecentlySoldState {
  const factory FetchRecentlySoldState({
    List<CardTransaction> sales,
    Option<Failure> fetchingSalesFailure,
    bool isLoading,
  }) = _FetchRecentlySoldState;

  factory FetchRecentlySoldState.initial() => FetchRecentlySoldState(
        sales: [],
        fetchingSalesFailure: none(),
        isLoading: false,
      );
}
