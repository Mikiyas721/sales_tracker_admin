import 'package:admin_app/presentation/models/sales_status_view_model.dart';
import 'package:admin_app/presentation/views/sales_status_view.dart';
import 'package:flutter/material.dart';
import '../../common/common.dart';

class SalespersonStatusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Melaku Belay',
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: context.primaryColor,
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/salesPersonShopsPage');
              })
        ],
      ),
      body: Padding(
        padding: 20.hPadding,
        child: SingleChildScrollView(
          child: Column(
            children: [
              20.vSpace,
              SalesStatusView(
                  onToday: (bool isActive) {},
                  onThisWeek: (bool isActive) {},
                  onThisMonth: (bool isActive) {},
                  salesStatusViewModel: SalesStatusViewModel(
                      activeButtonIndex: 1,
                      soldAmount: '500',
                      fundedAmount: '100',
                      loanedAmount: '200',
                      bars: [
                        BarData(value: 0,label: 'M', barHeight: 1000, stackHeight: 600),
                        BarData(value: 1,label: 'T', barHeight: 900, stackHeight: 700),
                        BarData(value: 2,label: 'W', barHeight: 700, stackHeight: 500),
                        BarData(value: 3,label: 'T', barHeight: 800, stackHeight: 400),
                        BarData(value: 4,label: 'F', barHeight: 300, stackHeight: 200),
                        BarData(value: 5,label: 'S', barHeight: 100, stackHeight: 100),
                        BarData(value: 6,label: 'S', barHeight: 500, stackHeight: 200),
                      ])),
              70.vSpace,
              25.vSpace
            ],
          ),
        ),
      ),
    );
  }
}
