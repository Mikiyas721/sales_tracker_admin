part of 'fetch_new_shops_bloc.dart';

@freezed
abstract class FetchNewShopsState extends BlocState with _$FetchNewShopsState {
  const factory FetchNewShopsState({
    bool isLoading,
    bool hasLoaded,
    Failure fetchingShopsFailure,
    List<Shop> shops,
  }) = _FetchNewShopsState;

  factory FetchNewShopsState.initial() => FetchNewShopsState(
        isLoading: false,
        hasLoaded: false,
        shops: null,
        fetchingShopsFailure: null,
      );
}
