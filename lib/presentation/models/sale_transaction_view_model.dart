import 'package:admin_app/common/view_model.dart';
import 'package:flutter/material.dart';

class SalesTransactionsViewModel extends ViewModel{
  final List<SaleTransactionViewModel> sales;

  SalesTransactionsViewModel(this.sales);
  @override
  List<Object> get props => [sales];

}
class SaleTransactionViewModel extends ViewModel {
  final String date;
  final String soldAmount;
  final String receivedAmount;
  final String time;

  SaleTransactionViewModel({
    @required this.date,
    this.soldAmount,
    @required this.receivedAmount,
    @required this.time,
  });

  @override
  List<Object> get props =>[
    date,
    soldAmount,
    receivedAmount,
    time,
  ];
}
