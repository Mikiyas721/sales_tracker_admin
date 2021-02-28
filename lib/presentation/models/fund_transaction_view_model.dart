import 'package:admin_app/common/view_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

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
