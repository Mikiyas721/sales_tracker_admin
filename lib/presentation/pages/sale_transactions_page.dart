import 'package:admin_app/common/controller/controller_provider.dart';
import 'package:admin_app/presentation/controller/sales_with_shop_controller.dart';
import 'package:admin_app/presentation/models/sale_transaction_view_model.dart';
import 'package:admin_app/presentation/views/sale_transaction_view.dart';
import 'package:flutter/material.dart';
import '../../common/common.dart';

class SaleTransactionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sale Transactions',
          overflow: TextOverflow.ellipsis,
        ),
      ),
      body: Padding(
        padding: 20.hPadding,
        child: ViewModelBuilder.withController<SalesTransactionsViewModel,
                SalesWithShopController>(
            create: () => SalesWithShopController(
                context, args['Salesperson'].id, args['Shop'].id),
            builder: (context, controller, model) {
              if (controller.bloc.state.isLoading)
                return Center(child: CircularProgressIndicator());
              if (controller.bloc.state.hasLoaded &&
                  controller.bloc.state.sales.isEmpty)
                return Center(
                    child: Text(
                        'No sales transactions between ${args['Salesperson'].name} and ${args['Shop'].name}'));
              if (controller.bloc.state.hasLoaded &&
                  controller.bloc.state.fetchingSalesFailure.message != null)
                return Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(controller.bloc.state.fetchingSalesFailure.message),
                      IconButton(
                          icon: Icon(Icons.refresh),
                          onPressed: controller.loadSales)
                    ],
                  ),
                );
              return SaleTransactionsView(sales: model);
            }),
      ),
    );
  }
}
