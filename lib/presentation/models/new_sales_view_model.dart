import 'package:admin_app/common/view_model.dart';
import 'package:flutter/cupertino.dart';

class RecentSalesViewModel extends SimpleListViewModel<RecentlySoldViewModel> {
  final List<RecentlySoldViewModel> newSales;
  final bool isLoading;
  final String errorMessage;

  RecentSalesViewModel(
      {@required this.newSales,
      @required this.isLoading,
      @required this.errorMessage})
      : super(data: newSales, isLoading: isLoading, error: errorMessage);
}

class RecentlySoldViewModel extends ViewModel {
  final String name;
  final String phoneNumber;
  final String amount;

  RecentlySoldViewModel({
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
