import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class SaleTransactionViewModel extends Equatable {
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
