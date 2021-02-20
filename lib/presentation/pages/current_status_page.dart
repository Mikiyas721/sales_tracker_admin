import 'package:admin_app/presentation/models/new_sales_view_model.dart';
import 'package:admin_app/presentation/models/shop_view_model.dart';
import 'package:admin_app/presentation/views/new_shop_view.dart';
import 'package:admin_app/presentation/views/new_sales_view.dart';
import 'package:admin_app/presentation/views/sales_person_shop_view.dart';
import 'package:flutter/material.dart';
import '../../common/common.dart';

class CurrentStatusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Status'),
            bottom: TabBar(
              tabs: [
                Text(
                  'Loans',
                  style: context.bodyText2,
                ),
                Text(
                  'Recently Sold',
                  style: context.bodyText2,
                ),
                Text(
                  'New Shops',
                  style: context.bodyText2,
                ),
              ],
              labelPadding: 5.vPadding,
            ),
          ),
          body: TabBarView(
            children: [
              ListView.builder(
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) {
                return NewSalesView(
                  recentlySoldViewModel: NewSalesViewModel(
                      name: 'Abebe Tesfaye',
                      phoneNumber: '251 941135730',
                      amount: '400'),
                );
              }),
              ListView.builder(
                  itemCount: 20,
                  itemBuilder: (BuildContext context, int index) {
                    return NewSalesView(
                      recentlySoldViewModel: NewSalesViewModel(
                          name: 'Mikiyas Tesfaye',
                          phoneNumber: '251 941135730',
                          amount: '500'),
                    );
                  }),
              ListView.builder(
                  itemCount: 20,
                  itemBuilder: (BuildContext context, int count) {
                    return NewShopView(
                        shopViewModel: ShopViewModel(
                            name: 'Mola Mamo',
                            phoneNumber: '251 941135730',
                            location: 'Lafto, AA'));
                  })
            ],
          ),
        ));
  }
}
