import 'package:admin_app/common/view_model.dart';
import 'package:equatable/equatable.dart';

class NewSalesViewModel extends ViewModel{
  final String name;
  final String phoneNumber;
  final String amount;

  NewSalesViewModel({this.name, this.phoneNumber, this.amount});

  @override
  List<Object> get props => [
    name,
    phoneNumber,
    amount,
  ];

}