import 'package:admin_app/common/view_model.dart';
import 'package:flutter/material.dart';

class CashTransactionsViewModel
    extends SimpleListViewModel<CashTransactionViewModel> {
  final List<CashTransactionViewModel> cash;
  final bool isLoading;
  final String errorMessage;

  CashTransactionsViewModel({
    this.cash,
    this.isLoading,
    this.errorMessage,
  }) : super(data: cash, isLoading: isLoading, error: errorMessage);

}

class CashTransactionViewModel extends ViewModel {
  final String date;
  final String amount;
  final String time;

  CashTransactionViewModel({
    @required this.date,
    @required this.amount,
    @required this.time,
  });

  @override
  List<Object> get props => [
        date,
        amount,
        time,
      ];
}
