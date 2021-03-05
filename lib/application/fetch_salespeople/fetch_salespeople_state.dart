part of 'fetch_salespeople_bloc.dart';

@freezed
abstract class FetchSalespeopleState extends BlocState
    with _$FetchSalespeopleState {
  const factory FetchSalespeopleState({
    List<Salesperson> salespeople,
    Option<Failure> salespeopleLoadingFailure,
    bool isLoading,
  }) = _FetchSalespeopleState;

  factory FetchSalespeopleState.initial() => FetchSalespeopleState(
        salespeople: [],
        salespeopleLoadingFailure: none(),
        isLoading: false,
      );
}
