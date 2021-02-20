import 'package:admin_app/presentation/models/new_sales_view_model.dart';
import 'package:flutter/material.dart';

class NewSalesView extends StatelessWidget {
  final NewSalesViewModel recentlySoldViewModel;

  const NewSalesView({Key key, this.recentlySoldViewModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Icon(Icons.person),
        ),
        title: Text(recentlySoldViewModel.name),
        subtitle: Text(
          recentlySoldViewModel.phoneNumber,
          style: TextStyle(color: Colors.grey, fontSize: 12),
        ),
        trailing: Text('${recentlySoldViewModel.amount}ETB'));
  }
}
