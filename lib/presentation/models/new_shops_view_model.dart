import 'package:admin_app/common/view_model.dart';
import 'package:flutter/cupertino.dart';

class NewShopsViewModel extends SimpleListViewModel<NewShopViewModel> {
  final List<NewShopViewModel> newShops;
  final bool isLoading;
  final String errorMessage;

  NewShopsViewModel(
      {@required this.newShops,
      @required this.isLoading,
      @required this.errorMessage})
      : super(data: newShops, isLoading: isLoading, error: errorMessage);

  @override
  List<Object> get props => [newShops, isLoading, errorMessage];
}

class NewShopViewModel extends ViewModel {
  final String name;
  final String phoneNumber;
  final String address;

  NewShopViewModel({
    this.name,
    this.phoneNumber,
    this.address,
  });

  @override
  List<Object> get props => [
        name,
        phoneNumber,
        address,
      ];
}
