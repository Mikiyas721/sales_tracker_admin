import 'package:admin_app/common/controller/controller_provider.dart';
import 'package:admin_app/domain/entities/salesperson.dart';
import 'package:admin_app/presentation/controller/salesperson_shops_controller.dart';
import 'package:admin_app/presentation/models/shop_view_model.dart';
import 'package:admin_app/presentation/views/salesperson_shops_view.dart';
import 'package:flutter/material.dart';

class SalespersonShopsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Salesperson salesperson = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 30,
        title: Text("${salesperson.name}'s Shops",
            overflow: TextOverflow.ellipsis),
      ),
      body: ViewModelBuilder.withController<SalespersonShopsViewModel,
              SalespersonShopsController>(
          create: () => SalespersonShopsController(context, salesperson.id),
          builder: (context, controller, model) {
            controller.loadShops();
            if (controller.bloc.state.isLoading)
              return Center(child: CircularProgressIndicator());
            if (controller.bloc.state.hasLoaded &&
                controller.bloc.state.shops.isEmpty)
              return Center(child: Text('${salesperson.name} has no shops'));
            if (controller.bloc.state.hasLoaded &&
                controller.bloc.state.salesPersonShopsLoadingFailure != null)
              return Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(controller
                        .bloc.state.salesPersonShopsLoadingFailure.message),
                    IconButton(
                        icon: Icon(Icons.refresh),
                        onPressed: controller.loadShops)
                  ],
                ),
              );
            return SalespersonShopsView(salespeople: model);
          }),
    );
  }
}
