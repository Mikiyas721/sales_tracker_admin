import 'package:admin_app/common/controller/controller_provider.dart';
import 'package:admin_app/presentation/controllers/salesperson_shops_controller.dart';
import 'package:admin_app/presentation/models/salespeople_view_model.dart';
import 'package:admin_app/presentation/models/shop_view_model.dart';
import 'package:admin_app/presentation/views/salesperson_shops_view.dart';
import 'package:flutter/material.dart';

class SalespersonShopsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final SalespersonViewModel salespersonViewModel =
        ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 30,
        title: Text("${salespersonViewModel.name}'s Shops",
            overflow: TextOverflow.ellipsis),
      ),
      body: ViewModelBuilder.withController<SalespersonShopsViewModel,
              SalespersonShopsController>(
          create: () =>
              SalespersonShopsController(context, salespersonViewModel),
          onInit: (controller) => controller.loadShops(),
          builder: (context, controller, model) {
            return SalespersonShopsView(
              salespersonShops: model,
              salespersonViewModel: salespersonViewModel,
              onReload: controller.loadShops,
            );
          }),
    );
  }
}
