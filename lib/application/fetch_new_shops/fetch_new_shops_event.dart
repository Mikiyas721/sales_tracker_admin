part of 'fetch_new_shops_bloc.dart';

abstract class FetchNewShopsEvent extends BlocEvent<FetchNewShopsState> {}

class FetchingNewShopsEvent extends FetchNewShopsEvent {
  @override
  Stream<FetchNewShopsState> handle(FetchNewShopsState currentState) async* {
    yield currentState.copyWith(isLoading: true);
  }
}
class FetchingSNewShopsSucceededEvent extends FetchNewShopsEvent {
  final List<Shop> shops;

  FetchingSNewShopsSucceededEvent(this.shops);

  @override
  Stream<FetchNewShopsState> handle(FetchNewShopsState currentState) async* {
    yield currentState.copyWith(isLoading:false,hasLoaded: true, shops: shops);
  }
}

class FetchingNewShopsFailedEvent extends FetchNewShopsEvent {
  final Failure loadingFailure;

  FetchingNewShopsFailedEvent(this.loadingFailure);

  @override
  Stream<FetchNewShopsState> handle(FetchNewShopsState currentState) async* {
    yield currentState.copyWith(
        isLoading: false, fetchingSalesFailure: loadingFailure);
  }
}

