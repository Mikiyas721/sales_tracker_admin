import 'package:admin_app/common/controller/controller_provider.dart';
import 'package:admin_app/presentation/controllers/salesperson_stats_controller.dart';
import 'package:admin_app/presentation/models/sales_status_view_model.dart';
import 'package:admin_app/presentation/models/salespeople_view_model.dart';
import 'package:admin_app/presentation/views/sales_status_view.dart';
import 'package:flutter/material.dart';
import '../../common/common.dart';

class SalespersonStatusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SalespersonViewModel salespersonViewModel =
        ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${salespersonViewModel.name}',
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: context.primaryColor,
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/salesPersonShopsPage',
                    arguments: salespersonViewModel);
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
                  create: () => SalespersonStatsController(
                      context, salespersonViewModel.id),
                  onInit: (controller) => controller.onToday(true),
                  builder: (context, controller, model) {
                    return SalesStatusView(
                      onToday: controller.onToday,
                      onThisWeek: controller.onThisWeek,
                      onThisMonth: controller.onThisMonth,
                      salesStatusViewModel: model,
                      onReload: controller.onReload,
                    );
                  }),
              95.vSpace,
            ],
          ),
        ),
      ),
    );
  }
}
