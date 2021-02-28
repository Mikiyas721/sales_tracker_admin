import 'package:admin_app/presentation/models/fund_transaction_view_model.dart';
import 'package:flutter/material.dart';
import '../../common/common.dart';

class FundTransactionsView extends StatelessWidget {
  final FundTransactionsViewModel funds;

  const FundTransactionsView({Key key, this.funds}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: funds.funds.length,
        itemBuilder: (BuildContext context, int index) {
          return FundTransactionView._(
              fundTransactionViewModel: funds.funds[index]);
        });
  }
}
class FundTransactionView extends StatelessWidget {
  final FundTransactionViewModel fundTransactionViewModel;

  const FundTransactionView._({
    Key key,
    @required this.fundTransactionViewModel,
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
                Text(fundTransactionViewModel.date, style: context.headline5)
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
                    children: [
                      Text('${fundTransactionViewModel.receivedAmount} ETB')
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
                  fundTransactionViewModel.time,
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
