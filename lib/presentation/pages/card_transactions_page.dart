import 'package:admin_app/common/controller/controller_provider.dart';
import 'package:admin_app/presentation/controller/cards_with_shop_controller.dart';
import 'package:admin_app/presentation/models/card_transaction_view_model.dart';
import 'package:admin_app/presentation/views/card_transactions_view.dart';
import 'package:flutter/material.dart';
import '../../common/common.dart';

class CardTransactionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Card Transactions',
          overflow: TextOverflow.ellipsis,
        ),
      ),
      body: Padding(
        padding: 20.hPadding,
        child: ViewModelBuilder.withController<CardTransactionsViewModel,
                CardsWithShopController>(
            create: () => CardsWithShopController(
                context, args['Salesperson'].id, args['Shop'].id),
            onInit: (controller) => controller.loadCards(),
            builder: (context, controller, model) {
              return CardTransactionsView(
                cards: model,
                onReload: controller.loadCards,
              );
            }),
      ),
    );
  }
}
