import 'package:admin_app/presentation/models/sales_status_view_model.dart';
import 'package:admin_app/presentation/views/sales_status_view.dart';
import 'package:admin_app/presentation/widgets/my_action_button.dart';
import 'package:flutter/material.dart';
import '../../common/common.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: 20.hPadding,
        child: SingleChildScrollView(
          child: Column(
            children: [
              50.vSpace,
              Stack(
                children: [
                  SalesStatusView(
                      onToday: (bool isActive) {},
                      onThisWeek: (bool isActive) {},
                      onThisMonth: (bool isActive) {},
                      salesStatusViewModel: SalesStatusViewModel(
                          title: 'Today',
                          activeButtonIndex: 0,
                          soldAmount: '500',
                          fundedAmount: '100',
                          loanedAmount: '200',
                          bars: [
                            BarData(x: 9, barHeight: 1000, stackHeight: 600),
                            BarData(x: 10, barHeight: 900, stackHeight: 700),
                            BarData(x: 11, barHeight: 700, stackHeight: 500),
                            BarData(x: 12, barHeight: 800, stackHeight: 400),
                            BarData(x: 1, barHeight: 300, stackHeight: 200),
                            BarData(x: 2, barHeight: 100, stackHeight: 100),
                            BarData(x: 3, barHeight: 500, stackHeight: 200),
                            BarData(x: 4, barHeight: 800, stackHeight: 750),
                            BarData(x: 5, barHeight: 600, stackHeight: 450),
                          ])),
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      icon: Icon(Icons.arrow_forward_ios_outlined),
                      onPressed: () {
                        Navigator.pushNamed(context, '/currentStatusPage');
                      },
                    ),
                  ),
                ],
              ),
              70.vSpace,
              MyActionButton(
                  label: 'Salespeople',
                  onSubmit: () {
                    Navigator.pushNamed(context, '/salesPeoplePage');
                  }),
              25.vSpace
            ],
          ),
        ),
      ),
    );
  }
}
