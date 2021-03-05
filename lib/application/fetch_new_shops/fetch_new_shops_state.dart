part of 'fetch_new_shops_bloc.dart';

@freezed
abstract class FetchNewShopsState extends BlocState with _$FetchNewShopsState {
  const factory FetchNewShopsState({
    List<Shop> shops,
    Option<Failure> fetchingShopsFailure,
    bool isLoading,
  }) = _FetchNewShopsState;

  factory FetchNewShopsState.initial() => FetchNewShopsState(
        shops: [],
        fetchingShopsFailure: none(),
        isLoading: false,
      );
}
