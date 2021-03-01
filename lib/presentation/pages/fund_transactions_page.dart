import 'package:admin_app/common/controller/controller_provider.dart';
import 'package:admin_app/presentation/controller/funds_with_shop_controller.dart';
import 'package:admin_app/presentation/models/fund_transaction_view_model.dart';
import 'package:admin_app/presentation/views/fund_transaction_view.dart';
import 'package:flutter/material.dart';
import '../../common/common.dart';

class FundTransactionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Fund Transactions',
          overflow: TextOverflow.ellipsis,
        ), //TODO consider using a SliverAppBar to show more details
      ),
      body: Padding(
        padding: 20.hPadding,
        child: ViewModelBuilder.withController<FundTransactionsViewModel,
                FundsWithShopController>(
            create: () => FundsWithShopController(
                context, args['Salesperson'].id, args['Shop'].id),
            builder: (context, controller, model) {
              if (controller.bloc.state.isLoading)
                return Center(child: CircularProgressIndicator());
              if (controller.bloc.state.hasLoaded &&
                  controller.bloc.state.funds.isEmpty)
                return Center(
                    child: Text(
                        'No fund transaction between ${args['Salesperson'].name} and ${args['Shop'].name}'));
              if (controller.bloc.state.hasLoaded &&
                  controller.bloc.state.fetchingFundsFailure.message != null)
                return Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(controller.bloc.state.fetchingFundsFailure.message),
                      IconButton(
                          icon: Icon(Icons.refresh),
                          onPressed: controller.loadSales)
                    ],
                  ),
                );
              return FundTransactionsView(funds: model);
            }),
      ),
    );
  }
}
