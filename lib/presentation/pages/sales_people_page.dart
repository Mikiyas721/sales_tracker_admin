import 'package:admin_app/presentation/models/sales_person_view_model.dart';
import 'package:admin_app/presentation/views/sales_person_view.dart';
import 'package:flutter/material.dart';
import '../../common/common.dart';

class SalesPeoplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Salespeople'),
      ),
      body: Padding(
        padding: 20.hPadding,
        child: ListView.builder(
            itemCount: 20,
            itemBuilder: (BuildContext context, int count) {
              return SalesPersonView(
                salesPersonViewModel: SalesPersonViewModel(
                    name: 'Melaku Belay',
                    phoneNumber: '+251 941135730',
                    totalLoan: '200',
                    totalSales: '500',
                    totalShops: '20'),
              );
            }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/newSalesPersonPage');
        },
        backgroundColor: context.primaryColor,
        child: Icon(Icons.add),
      ),
    );
  }
}
