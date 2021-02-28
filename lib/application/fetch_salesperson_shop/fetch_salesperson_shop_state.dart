part of 'fetch_salesperson_shop_bloc.dart';

@freezed
abstract class FetchSalespersonShopState extends BlocState
    with _$FetchSalespersonShopState {
  const factory FetchSalespersonShopState({
    bool isLoading,
    bool hasLoaded,
    Failure salesPersonShopsLoadingFailure,
    List<Shop> shops,
  }) = _FetchSalespersonShopState;

  factory FetchSalespersonShopState.initial() => FetchSalespersonShopState(
      isLoading: false,
      hasLoaded: false,
      salesPersonShopsLoadingFailure: null,
      shops: null);
}
