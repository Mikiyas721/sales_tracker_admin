import 'package:admin_app/common/controller/controller_provider.dart';
import 'package:admin_app/presentation/controller/salesperson_stats_controller.dart';
import 'package:admin_app/presentation/models/sales_status_view_model.dart';
import 'package:admin_app/presentation/views/sales_status_view.dart';
import 'package:flutter/material.dart';
import '../../common/common.dart';

class SalespersonStatusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String salespersonId = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Melaku Belay',
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: context.primaryColor,
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/salesPersonShopsPage');
              })
        ],
      ),
      body: Padding(
        padding: 20.hPadding,
        child: SingleChildScrollView(
          child: Column(
            children: [
              20.vSpace,
              ViewModelBuilder.withController<SalesStatusViewModel,
                      SalespersonStatsController>(
                  create: () =>
                      SalespersonStatsController(context, salespersonId),
                  builder: (context, controller, model) {
                    controller.onToday(true);
                    if (controller.bloc.state.isLoading)
                      return Center(child: CircularProgressIndicator());
                    if (controller.bloc.state.hasLoaded &&
                        controller.bloc.state.stats.detailedData.isEmpty)
                      return Center(
                          child: Text('No stats for this sales person'));
                    if (controller.bloc.state.hasLoaded &&
                        controller.bloc.state.loadingError != null)
                      return Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(controller.bloc.state.loadingError.message),
                            IconButton(
                                icon: Icon(Icons.refresh),
                                onPressed: controller.onRefresh)
                          ],
                        ),
                      );
                    return SalesStatusView(
                        onToday: controller.onToday,
                        onThisWeek: controller.onThisWeek,
                        onThisMonth: controller.onThisMonth,
                        salesStatusViewModel: model);
                  }),
              95.vSpace,
            ],
          ),
        ),
      ),
    );
  }
}
