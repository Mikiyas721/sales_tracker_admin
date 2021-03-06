import 'package:admin_app/common/controller/controller_provider.dart';
import 'package:admin_app/common/widgets/simple_list_view.dart';
import 'package:admin_app/presentation/controller/cards_with_shop_controller.dart';
import 'package:flutter/material.dart';
import '../../presentation/models/card_transaction_view_model.dart';
import '../../common/common.dart';

class CardTransactionsView extends StatelessWidget {
  final CardTransactionsViewModel cards;
  final VoidCallback onReload;

  const CardTransactionsView({
    Key key,
    @required this.cards,
    @required this.onReload,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<CardsWithShopController>(context);
    return SimpleListView<CardTransactionViewModel>(
        model: cards,
        itemBuilder: (BuildContext context, CardTransactionViewModel model) {
          return CardTransactionView._(cardTransactionViewModel: model);
        },
        errorView: Center(
            child: EmptyErrorView.defaultError(
          description: cards.errorMessage,
          onAction: onReload,
        )),
        loadingView: Center(child: MyLoadingView()),
        emptyView: Center(
          child: EmptyErrorView.defaultEmpty(
            onAction: onReload,
            description:
                'No card transaction between ${controller.salesperson.name} and ${controller.shop.name}',
          ),
        ));
  }
}

class CardTransactionView extends StatelessWidget {
  final CardTransactionViewModel cardTransactionViewModel;

  const CardTransactionView._(
      {Key key, @required this.cardTransactionViewModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15))),
      elevation: 5,
      margin: EdgeInsets.only(top: 9, left: 4, right: 4, bottom: 4),
      child: Container(
        padding: 15.allPadding,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Text(cardTransactionViewModel.date, style: context.headline5)
              ],
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 15),
              child: Row(
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sold',
                        style: context.headline6,
                      ),
                    ],
                  ),
                  25.hSpace,
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('${cardTransactionViewModel.amount} ETB'),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Spacer(),
                Icon(
                  Icons.access_time,
                  color: Colors.grey,
                  size: 18,
                ),
                Text(
                  cardTransactionViewModel.time,
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
