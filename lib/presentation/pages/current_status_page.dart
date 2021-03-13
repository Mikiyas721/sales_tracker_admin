import 'package:admin_app/common/controller/controller_provider.dart';
import 'package:admin_app/presentation/controllers/loans_controller.dart';
import 'package:admin_app/presentation/controllers/new_shops_controller.dart';
import 'package:admin_app/presentation/controllers/recent_sales_controller.dart';
import 'package:admin_app/presentation/models/loans_view_model.dart';
import 'package:admin_app/presentation/models/new_sales_view_model.dart';
import 'package:admin_app/presentation/models/new_shops_view_model.dart';
import 'package:admin_app/presentation/views/loans_view.dart';
import 'package:admin_app/presentation/views/new_shops_view.dart';
import 'package:admin_app/presentation/views/recently_sold_view.dart';
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
              ViewModelBuilder.withController<LoansViewModel, LoansController>(
                  create: () => LoansController(context),
                  onInit: (controller) => controller.loadLoans(),
                  builder: (context, controller, model) {
                    return LoansView(
                      loans: model,
                      onReload: controller.loadLoans,
                    );
                  }),
              ViewModelBuilder.withController<RecentSalesViewModel,
                      RecentSalesController>(
                  create: () => RecentSalesController(context),
                  onInit: (controller) => controller.loadRecentSales(),
                  builder: (context, controller, model) {
                    return RecentSalesView(
                      newSales: model,
                      onReload: controller.loadRecentSales,
                    );
                  }),
              ViewModelBuilder.withController<NewShopsViewModel,
                      NewShopsController>(
                  create: () => NewShopsController(context),
                  onInit: (controller) => controller.loadNewShops(),
                  builder: (context, controller, model) {
                    return NewShopsView(
                      newShops: model,
                      onReload: controller.loadNewShops,
                    );
                  })
            ],
          ),
        ));
  }
}
