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
                          activeButtonIndex: 0,
                          soldAmount: '500',
                          fundedAmount: '100',
                          loanedAmount: '200',
                          bars: [
                            BarData(value: 0, label: '9AM',barHeight: 1000, stackHeight: 600),
                            BarData(value: 1,label: '10', barHeight: 900, stackHeight: 700),
                            BarData(value: 2,label: '11', barHeight: 700, stackHeight: 500),
                            BarData(value: 3,label: '12', barHeight: 800, stackHeight: 400),
                            BarData(value: 4, label: '1',barHeight: 300, stackHeight: 200),
                            BarData(value: 5, label: '2',barHeight: 100, stackHeight: 100),
                            BarData(value: 6, label: '3',barHeight: 500, stackHeight: 200),
                            BarData(value: 7, label: '4',barHeight: 800, stackHeight: 750),
                            BarData(value: 8, label:'5PM',barHeight: 600, stackHeight: 450),
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
