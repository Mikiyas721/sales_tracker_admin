import 'package:admin_app/common/view_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class NewShopsViewModel extends ViewModel {
  final List<NewShopViewModel> newShops;

  NewShopsViewModel({@required this.newShops});

  @override
  List<Object> get props => [newShops];
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
