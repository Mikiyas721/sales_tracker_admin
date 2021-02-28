import 'package:admin_app/common/view_model.dart';
import 'package:flutter/material.dart';

class SalespersonViewModel extends ViewModel {
  final String name;
  final String phoneNumber;
  final String totalLoan;
  final String totalSales;
  final String totalShops;

  SalespersonViewModel({
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
