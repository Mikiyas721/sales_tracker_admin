import 'package:admin_app/common/controller/controller_provider.dart';
import 'package:admin_app/common/widgets/simple_list_view.dart';
import 'package:admin_app/presentation/controllers/cash_with_shop_controller.dart';
import 'package:admin_app/presentation/models/cash_transaction_view_model.dart';
import 'package:flutter/material.dart';
import '../../common/common.dart';

class CashTransactionsView extends StatelessWidget {
  final CashTransactionsViewModel cash;
  final VoidCallback onReload;

  const CashTransactionsView({
    Key key,
    @required this.cash,
    @required this.onReload,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<CashWithShopController>(context);
    return SimpleListView<CashTransactionViewModel>(
        model: cash,
        itemBuilder: (BuildContext context, CashTransactionViewModel model) {
          return CashTransactionView._(cashTransactionViewModel: model);
        },
        errorView: Center(
            child: EmptyErrorView.defaultError(
          description: cash.errorMessage,
          onAction: onReload,
        )),
        loadingView: Center(child: MyLoadingView()),
        emptyView: Center(
          child: EmptyErrorView.defaultEmpty(
            onAction: onReload,
            description:
                'No cash transaction between ${controller.salesperson.name} and ${controller.shop.name}',
          ),
        ));
  }
}

class CashTransactionView extends StatelessWidget {
  final CashTransactionViewModel cashTransactionViewModel;

  const CashTransactionView._({
    Key key,
    @required this.cashTransactionViewModel,
  }) : super(key: key);

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
                Text(cashTransactionViewModel.date, style: context.headline5)
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
                        'Received',
                        style: context.headline6,
                      ),
                    ],
                  ),
                  25.hSpace,
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text('${cashTransactionViewModel.amount} ETB')],
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
                  cashTransactionViewModel.time,
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
