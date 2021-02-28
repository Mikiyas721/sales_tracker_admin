part of 'fetch_recently_sold_bloc.dart';

@freezed
abstract class FetchRecentlySoldState extends BlocState
    with _$FetchRecentlySoldState {
  const factory FetchRecentlySoldState({
    bool isLoading,
    bool hasLoaded,
    Failure fetchingSalesFailure,
    List<SaleTransaction> sales,
  }) = _FetchRecentlySoldState;

  factory FetchRecentlySoldState.initial() => FetchRecentlySoldState(
        isLoading: false,
        hasLoaded: false,
        fetchingSalesFailure: null,
        sales: null,
      );
}
