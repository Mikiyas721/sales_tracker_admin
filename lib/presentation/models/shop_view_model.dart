import 'package:admin_app/common/view_model.dart';
import 'package:flutter/material.dart';

class SalespersonShopsViewModel
    extends SimpleListViewModel<SalespersonShopViewModel> {
  final List<SalespersonShopViewModel> shops;
  final bool isLoading;
  final String errorMessage;

  SalespersonShopsViewModel(
      {@required this.shops, @required this.isLoading, @required this.errorMessage})
      :super(
    data: shops, isLoading: isLoading, error: errorMessage);

}

class SalespersonShopViewModel extends ViewModel {
  final String id;
  final String name;
  final String phoneNumber;
  final String location;

  SalespersonShopViewModel({
    @required this.id,
    @required this.name,
    @required this.phoneNumber,
    @required this.location,
  });

  @override
  List<Object> get props =>
      [
        name,
        phoneNumber,
        location,
      ];
}
