part of 'fetch_salespeople_bloc.dart';

@freezed
abstract class FetchSalespeopleState extends BlocState
    with _$FetchSalespeopleState {
  const factory FetchSalespeopleState({
    bool isLoading,
    bool hasLoaded,
    Failure salespeopleLoadingFailure,
    List<Salesperson> salespeople,
  }) = _FetchSalespeopleState;

  factory FetchSalespeopleState.initial() => FetchSalespeopleState(
        isLoading: false,
        hasLoaded: false,
        salespeople: null,
        salespeopleLoadingFailure: null,
      );
}
