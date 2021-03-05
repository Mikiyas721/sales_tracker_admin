part of 'fetch_salesperson_shop_bloc.dart';

@freezed
abstract class FetchSalespersonShopsState extends BlocState
    with _$FetchSalespersonShopsState {
  const factory FetchSalespersonShopsState({
    List<Shop> shops,
    Option<Failure> salesPersonShopsLoadingFailure,
    bool isLoading,
  }) = _FetchSalespersonShopState;

  factory FetchSalespersonShopsState.initial() => FetchSalespersonShopsState(
      shops: [],
      salesPersonShopsLoadingFailure: none(),
      isLoading: false,
  );
}
