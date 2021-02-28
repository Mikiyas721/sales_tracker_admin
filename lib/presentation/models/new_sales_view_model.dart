import 'package:admin_app/common/view_model.dart';
import 'package:equatable/equatable.dart';

class RecentSalesViewModel extends ViewModel {
  final List<RecentlySoldViewModel> newSales;

  RecentSalesViewModel({this.newSales});

  @override
  List<Object> get props => [newSales];
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
