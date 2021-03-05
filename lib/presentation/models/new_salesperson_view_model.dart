import 'package:admin_app/common/view_model.dart';

class NewSalesPersonViewModel extends ViewModel{
  final String name;
  final String nameError;
  final String phoneNumber;
  final String phoneNumberError;
  final bool isAdding;

  NewSalesPersonViewModel({
    this.name,
    this.nameError,
    this.phoneNumber,
    this.phoneNumberError,
    this.isAdding,
  });

  @override
  List<Object> get props => [
    name,
    nameError,
    phoneNumber,
    phoneNumberError,
    isAdding,
  ];
}