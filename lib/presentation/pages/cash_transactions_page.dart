import 'package:admin_app/common/controller/controller_provider.dart';
import 'package:admin_app/presentation/controller/cash_with_shop_controller.dart';
import 'package:admin_app/presentation/models/cash_transaction_view_model.dart';
import 'package:admin_app/presentation/views/cash_transactions_view.dart';
import 'package:flutter/material.dart';
import '../../common/common.dart';

class CashTransactionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cash Transactions',
          overflow: TextOverflow.ellipsis,
        ), //TODO consider using a SliverAppBar to show more details
      ),
      body: Padding(
        padding: 20.hPadding,
        child: ViewModelBuilder.withController<CashTransactionsViewModel,
                CashWithShopController>(
            create: () => CashWithShopController(
                context, args['Salesperson'].id, args['Shop'].id),
            onInit: (controller) => controller.loadFunds(),
            builder: (context, controller, model) {
              return CashTransactionsView(
                  cash: model, onReload: controller.loadFunds);
            }),
      ),
    );
  }
}
