import 'package:admin_app/common/view_model.dart';
import 'package:flutter/material.dart';

class FundTransactionsViewModel extends ViewModel{
  final List<FundTransactionViewModel> funds;

  FundTransactionsViewModel(this.funds);
  @override
  List<Object> get props => [funds];

}
class FundTransactionViewModel extends ViewModel {
  final String date;
  final String receivedAmount;
  final String time;

  FundTransactionViewModel({
    @required this.date,
    @required this.receivedAmount,
    @required this.time,
  });

  @override
  List<Object> get props =>[
    date,
    receivedAmount,
    time,
  ];
}
