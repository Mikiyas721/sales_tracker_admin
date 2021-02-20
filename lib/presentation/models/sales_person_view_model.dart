import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class SalesPersonViewModel extends Equatable {
  final String name;
  final String phoneNumber;
  final String totalLoan;
  final String totalSales;
  final String totalShops;

  SalesPersonViewModel({
    @required this.name,
    @required this.phoneNumber,
    @required this.totalLoan,
    @required this.totalSales,
    @required this.totalShops,
  });

  @override
  List<Object> get props => [
    name,
    phoneNumber,
    totalLoan,
    totalSales,
    totalShops,
  ];
}
