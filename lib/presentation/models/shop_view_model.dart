import 'package:admin_app/common/view_model.dart';
import 'package:flutter/material.dart';

class SalespersonShopsViewModel extends ViewModel{
  final List<SalespersonShopViewModel> shops;

  SalespersonShopsViewModel({@required this.shops});
  @override
  List<Object> get props =>[shops];

}
class SalespersonShopViewModel extends ViewModel {
  final String name;
  final String phoneNumber;
  final String location;

  SalespersonShopViewModel({
    @required this.name,
    @required this.phoneNumber,
    @required this.location,
  });

  @override
  List<Object> get props => [
    name,
    phoneNumber,
    location,
  ];
}
