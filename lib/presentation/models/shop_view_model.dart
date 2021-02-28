import 'package:admin_app/common/view_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class ShopViewModel extends ViewModel {
  final String name;
  final String phoneNumber;
  final String location;

  ShopViewModel({
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
