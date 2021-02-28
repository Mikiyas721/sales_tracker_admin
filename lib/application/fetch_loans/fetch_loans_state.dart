part of 'fetch_loans_bloc.dart';

@freezed
abstract class FetchLoansState extends BlocState with _$FetchLoansState {
  const factory FetchLoansState({
    bool isLoading,
    bool hasLoaded,
    Failure fetchingSalesFailure,
    List<SaleTransaction> sales,
  }) = _FetchLoansState;

  factory FetchLoansState.initial() => FetchLoansState(
        sales: null,
        fetchingSalesFailure: null,
        hasLoaded: false,
        isLoading: false,
      );
}
