part of 'fetch_salesperson_shop_bloc.dart';

@immutable
abstract class FetchSalespersonShopsEvent extends BlocEvent<FetchSalespersonShopsState> {}

class SalespersonShopsLoadingEvent extends FetchSalespersonShopsEvent {
  @override
  Stream<FetchSalespersonShopsState> handle(FetchSalespersonShopsState currentState) async* {
    yield currentState.copyWith(isLoading: true);
  }
}

class SalespersonShopsLoadingSucceededEvent extends FetchSalespersonShopsEvent {
  final List<Shop> shops;

  SalespersonShopsLoadingSucceededEvent(this.shops);

  @override
  Stream<FetchSalespersonShopsState> handle(FetchSalespersonShopsState currentState) async* {
    yield currentState.copyWith(isLoading:false,hasLoaded: true, shops: shops);
  }
}

class SalespersonShopsLoadingFailedEvent extends FetchSalespersonShopsEvent {
  final Failure loadingFailure;

  SalespersonShopsLoadingFailedEvent(this.loadingFailure);

  @override
  Stream<FetchSalespersonShopsState> handle(FetchSalespersonShopsState currentState) async* {
    yield currentState.copyWith(
        isLoading: false, salesPersonShopsLoadingFailure: loadingFailure);
  }
}
