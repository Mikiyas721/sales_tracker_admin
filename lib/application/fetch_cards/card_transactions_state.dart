part of 'card_transactions_bloc.dart';

@freezed
abstract class CardTransactionsState extends BlocState with _$CardTransactionsState{
  const factory CardTransactionsState({
    List<CardTransaction> cards,
    Option<Failure> fetchingSalesFailure,
    bool isLoading,
  }) = _CardTransactionsState;

  factory CardTransactionsState.initial() => CardTransactionsState(
    cards: [],
    fetchingSalesFailure: none(),
    isLoading: false,
  );
}
