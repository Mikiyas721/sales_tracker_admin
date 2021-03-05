part of 'fetch_new_shops_bloc.dart';

abstract class FetchNewShopsEvent extends BlocEvent<FetchNewShopsState> {}

class FetchingNewShopsEvent extends FetchNewShopsEvent {
  @override
  Stream<FetchNewShopsState> handle(FetchNewShopsState currentState) async* {
    yield currentState.copyWith(isLoading: true);
  }
}

class FetchingNewShopsSucceededEvent extends FetchNewShopsEvent {
  final List<Shop> shops;

  FetchingNewShopsSucceededEvent(this.shops);

  @override
  Stream<FetchNewShopsState> handle(FetchNewShopsState currentState) async* {
    yield currentState.copyWith(
      shops: shops,
      fetchingShopsFailure: none(),
      isLoading: false,
    );
  }
}

class FetchingNewShopsFailedEvent extends FetchNewShopsEvent {
  final Failure loadingFailure;

  FetchingNewShopsFailedEvent(this.loadingFailure);

  @override
  Stream<FetchNewShopsState> handle(FetchNewShopsState currentState) async* {
    yield currentState.copyWith(
      isLoading: false,
      fetchingShopsFailure: Failure.getFailureWithOption(loadingFailure),
    );
  }
}
