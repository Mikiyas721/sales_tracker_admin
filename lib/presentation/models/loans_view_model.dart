import 'package:admin_app/common/view_model.dart';
import 'package:flutter/material.dart';

class LoansViewModel extends SimpleListViewModel<LoanViewModel> {
  final List<LoanViewModel> loans;
  final bool loading;
  final String errorMessage;

  LoansViewModel(
      {@required this.loans, @required this.errorMessage, @required this.loading})
      : super(data: loans, isLoading: loading, error: errorMessage);
}

class LoanViewModel extends ViewModel {
  final String name;
  final String phoneNumber;
  final String amount;

  LoanViewModel({
    this.name,
    this.phoneNumber,
    this.amount,
  });

  @override
  List<Object> get props => [
        name,
        phoneNumber,
        amount,
      ];
}
