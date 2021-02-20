import 'package:equatable/equatable.dart';

class NewSalesViewModel extends Equatable{
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