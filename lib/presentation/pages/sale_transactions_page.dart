import 'package:admin_app/presentation/models/sale_transaction_view_model.dart';
import 'package:admin_app/presentation/views/sale_transaction_view.dart';
import 'package:flutter/material.dart';
import '../../common/common.dart';

class SaleTransactionsPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('Sale Transactions'),
    ),
    body: Padding(
      padding: 20.hPadding,
      child: ListView.builder(
          itemCount: 20,
          itemBuilder: (BuildContext context, int index) {
            return SaleTransactionView(
              salesTransactionViewModel: SaleTransactionViewModel(
                  date: 'Thu, Feb 5,2021',
                  receivedAmount: '200',
                  soldAmount: '200',
                  time: '11:02AM'),
            );
          }),
    ),
  );
  }

}