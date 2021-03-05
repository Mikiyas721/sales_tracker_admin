import 'package:admin_app/common/view_model.dart';
import 'package:flutter/material.dart';

class CardTransactionsViewModel
    extends SimpleListViewModel<CardTransactionViewModel> {
  final List<CardTransactionViewModel> cards;
  final bool isLoading;
  final String errorMessage;

  CardTransactionsViewModel({
    this.cards,
    this.errorMessage,
    this.isLoading,
  }) : super(data: cards, error: errorMessage, isLoading: isLoading);

}

class CardTransactionViewModel extends ViewModel {
  final String date;
  final String amount;
  final String time;

  CardTransactionViewModel({
    @required this.date,
    this.amount,
    @required this.time,
  });

  @override
  List<Object> get props => [
        date,
        amount,
        time,
      ];
}
