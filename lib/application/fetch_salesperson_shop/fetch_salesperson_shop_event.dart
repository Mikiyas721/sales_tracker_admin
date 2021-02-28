part of 'fetch_salesperson_shop_bloc.dart';

@immutable
abstract class FetchSalespersonShopEvent extends BlocEvent<FetchSalespersonShopState> {}

class MyShopsLoadingEvent extends FetchSalespersonShopEvent {
  @override
  Stream<FetchSalespersonShopState> handle(FetchSalespersonShopState currentState) async* {
    yield currentState.copyWith(isLoading: true);
  }
}

class MyShopsLoadingSucceededEvent extends FetchSalespersonShopEvent {
  final List<Shop> shops;

  MyShopsLoadingSucceededEvent(this.shops);

  @override
  Stream<FetchSalespersonShopState> handle(FetchSalespersonShopState currentState) async* {
    yield currentState.copyWith(isLoading:false,hasLoaded: true, shops: shops);
  }
}

class MyShopsLoadingFailedEvent extends FetchSalespersonShopEvent {
  final Failure loadingFailure;

  MyShopsLoadingFailedEvent(this.loadingFailure);

  @override
  Stream<FetchSalespersonShopState> handle(FetchSalespersonShopState currentState) async* {
    yield currentState.copyWith(
        isLoading: false, salesPersonShopsLoadingFailure: loadingFailure);
  }
}
