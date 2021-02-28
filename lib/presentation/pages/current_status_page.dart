import 'package:admin_app/common/controller/controller_provider.dart';
import 'package:admin_app/presentation/controller/loans_controller.dart';
import 'package:admin_app/presentation/controller/new_shops_controller.dart';
import 'package:admin_app/presentation/controller/recent_sales_controller.dart';
import 'package:admin_app/presentation/models/loans_view_model.dart';
import 'package:admin_app/presentation/models/new_sales_view_model.dart';
import 'package:admin_app/presentation/models/new_shops_view_model.dart';
import 'package:admin_app/presentation/models/shop_view_model.dart';
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
                  builder: (context, controller, model) {
                    controller.loadLoans();

                    if (controller.bloc.state.isLoading)
                      return Center(child: CircularProgressIndicator());
                    if (controller.bloc.state.hasLoaded &&
                        controller.bloc.state.sales.isEmpty)
                      return Center(child: Text('No Loans'));
                    if (controller.bloc.state.hasLoaded &&
                        controller.bloc.state.fetchingSalesFailure.message !=
                            null)
                      return Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(controller
                                .bloc.state.fetchingSalesFailure.message),
                            IconButton(
                                icon: Icon(Icons.refresh),
                                onPressed: controller.loadLoans)
                          ],
                        ),
                      );
                    return LoansView(loans: model);
                  }),
              ViewModelBuilder.withController<RecentSalesViewModel,
                      RecentSalesController>(
                  create: () => RecentSalesController(context),
                  builder: (context, controller, model) {
                    controller.loadRecentSales();

                    if (controller.bloc.state.isLoading)
                      return Center(child: CircularProgressIndicator());
                    if (controller.bloc.state.hasLoaded &&
                        controller.bloc.state.sales.isEmpty)
                      return Center(child: Text('No Recently Sold Card'));
                    if (controller.bloc.state.hasLoaded &&
                        controller.bloc.state.fetchingSalesFailure.message !=
                            null)
                      return Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(controller
                                .bloc.state.fetchingSalesFailure.message),
                            IconButton(
                                icon: Icon(Icons.refresh),
                                onPressed: controller.loadRecentSales)
                          ],
                        ),
                      );
                    return RecentSalesView(
                      newSales: model,
                    );
                  }),
              ViewModelBuilder.withController<NewShopsViewModel,
                      NewShopsController>(
                  create: () => NewShopsController(context),
                  builder: (context, controller, model) {
                    controller.loadNewShops();
                    if (controller.bloc.state.isLoading)
                      return Center(child: CircularProgressIndicator());
                    if (controller.bloc.state.hasLoaded &&
                        controller.bloc.state.shops.isEmpty)
                      return Center(child: Text('No New Shop'));
                    if (controller.bloc.state.hasLoaded &&
                        controller.bloc.state.fetchingShopsFailure.message !=
                            null)
                      return Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(controller
                                .bloc.state.fetchingShopsFailure.message),
                            IconButton(
                                icon: Icon(Icons.refresh),
                                onPressed: controller.loadNewShops)
                          ],
                        ),
                      );
                    return NewShopsView(newShopsViewModel: model);
                  })
            ],
          ),
        ));
  }
}
