import 'package:admin_app/common/view_model.dart';
import 'package:flutter/material.dart';

class SalespeopleViewModel extends ViewModel{
  final List<SalespersonViewModel> salespeople;

  SalespeopleViewModel({@required this.salespeople});
  @override
  List<Object> get props => [salespeople];

}
class SalespersonViewModel extends ViewModel {
  final String id;
  final String name;
  final String phoneNumber;

  SalespersonViewModel({
    @required this.id,
    @required this.name,
    @required this.phoneNumber,
  });

  @override
  List<Object> get props => [
    id,
    name,
    phoneNumber
  ];
}
