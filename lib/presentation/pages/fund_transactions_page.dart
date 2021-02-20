import 'package:admin_app/presentation/models/fund_transaction_view_model.dart';
import 'package:admin_app/presentation/views/fund_transaction_view.dart';
import 'package:flutter/material.dart';
import '../../common/common.dart';

class FundTransactionsPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fund Transactions'),
      ),
      body: Padding(
        padding: 20.hPadding,
        child: ListView.builder(
            itemCount: 20,
            itemBuilder: (BuildContext context, int index) {
              return FundTransactionView(
                fundTransactionViewModel: FundTransactionViewModel(
                    date: 'Thu, Feb 5,2021',
                    receivedAmount: '200',
                    time: '11:02AM'),
              );
            }),
      ),
    );
  }

}