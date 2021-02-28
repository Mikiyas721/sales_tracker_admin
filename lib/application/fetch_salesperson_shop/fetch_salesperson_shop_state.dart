part of 'fetch_salesperson_shop_bloc.dart';

@freezed
abstract class FetchSalespersonShopsState extends BlocState
    with _$FetchSalespersonShopsState {
  const factory FetchSalespersonShopsState({
    bool isLoading,
    bool hasLoaded,
    Failure salesPersonShopsLoadingFailure,
    List<Shop> shops,
  }) = _FetchSalespersonShopState;

  factory FetchSalespersonShopsState.initial() => FetchSalespersonShopsState(
      isLoading: false,
      hasLoaded: false,
      salesPersonShopsLoadingFailure: null,
      shops: null);
}
