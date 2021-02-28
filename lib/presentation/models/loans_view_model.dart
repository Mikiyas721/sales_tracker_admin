import 'package:admin_app/common/view_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class LoansViewModel extends ViewModel {
  final List<LoanViewModel> loans;

  LoansViewModel({@required this.loans});

  @override
  List<Object> get props => [loans];
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
