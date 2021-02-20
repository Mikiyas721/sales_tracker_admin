import 'package:admin_app/presentation/models/shop_view_model.dart';
import 'package:admin_app/presentation/views/sales_person_shop_view.dart';
import 'package:flutter/material.dart';

class SalesPersonShopsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 30,
        title: Text("Melaku Belay's Shops", overflow: TextOverflow.ellipsis),
      ),
      body: ListView.builder(
          itemCount: 20,
          itemBuilder: (BuildContext context, int count) {
            return SalesPersonShopView(
              shopViewModel: ShopViewModel(
                  name: 'Abebe Kebede',
                  phoneNumber: '251 941135730',
                  location: 'Lafto, AA'),
              onSalesTransactions: () {
                Navigator.pushNamed(context, '/saleTransactionsPage');
              },
              onFundTransactions: () {
                Navigator.pushNamed(context, '/fundTransactionsPage');
              },
            );
          }),
    );
  }
}
