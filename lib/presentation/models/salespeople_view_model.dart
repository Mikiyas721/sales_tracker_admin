import 'package:admin_app/common/view_model.dart';
import 'package:flutter/material.dart';

class SalespeopleViewModel extends SimpleListViewModel<SalespersonViewModel> {
  final List<SalespersonViewModel> salespeople;
  final bool isLoading;
  final String errorMessage;

  SalespeopleViewModel(
      {@required this.salespeople,
      @required this.isLoading,
      @required this.errorMessage});
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
  List<Object> get props => [id, name, phoneNumber];
}
