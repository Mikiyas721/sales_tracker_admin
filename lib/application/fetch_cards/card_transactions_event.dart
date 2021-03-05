part of 'card_transactions_bloc.dart';

abstract class CardTransactionsEvent extends BlocEvent<CardTransactionsState> {}

class FetchingCardsEvent extends CardTransactionsEvent {
  @override
  Stream<CardTransactionsState> handle(CardTransactionsState currentState) async* {
    yield currentState.copyWith(isLoading: true);
  }
}

class FetchingCardsSucceededEvent extends CardTransactionsEvent {
  final List<CardTransaction> cards;

  FetchingCardsSucceededEvent(this.cards);

  @override
  Stream<CardTransactionsState> handle(CardTransactionsState currentState) async* {
    yield currentState.copyWith(
      cards: cards,
      fetchingSalesFailure: none(),
      isLoading: false,
    );
  }
}

class FetchingCardsFailedEvent extends CardTransactionsEvent {
  final Failure loadingFailure;

  FetchingCardsFailedEvent(this.loadingFailure);

  @override
  Stream<CardTransactionsState> handle(CardTransactionsState currentState) async* {
    yield currentState.copyWith(
      isLoading: false,
      fetchingSalesFailure: Failure.getFailureWithOption(loadingFailure),
    );
  }
}
