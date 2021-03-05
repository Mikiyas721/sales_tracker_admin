part of 'fetch_loans_bloc.dart';

@freezed
abstract class FetchLoansState extends BlocState with _$FetchLoansState {
  const factory FetchLoansState({
    List<CardTransaction> sales,
    Option<Failure> fetchingSalesFailure,
    bool isLoading,
  }) = _FetchLoansState;

  factory FetchLoansState.initial() => FetchLoansState(
        sales: [],
        fetchingSalesFailure: none(),
        isLoading: false,
      );
}
