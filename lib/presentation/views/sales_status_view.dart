import 'package:admin_app/presentation/models/sales_status_view_model.dart';
import 'package:admin_app/presentation/widgets/my_tab_button.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../../common/common.dart';

class SalesStatusView extends StatelessWidget {
  final SalesStatusViewModel salesStatusViewModel;
  final void Function(bool isActive) onToday;
  final void Function(bool isActive) onThisWeek;
  final void Function(bool isActive) onThisMonth;

  const SalesStatusView(
      {Key key,
      @required this.salesStatusViewModel,
      @required this.onToday,
      @required this.onThisWeek,
      @required this.onThisMonth})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              salesStatusViewModel.title,
              style: context.headline2,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 60),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MyTabButton(
                label: 'T',
                isActive:
                    salesStatusViewModel.activeButtonIndex == 0 ? true : false,
                onTap: onToday,
              ),
              MyTabButton(
                label: 'W',
                isActive:
                    salesStatusViewModel.activeButtonIndex == 1 ? true : false,
                onTap: onThisWeek,
              ),
              MyTabButton(
                label: 'M',
                isActive:
                    salesStatusViewModel.activeButtonIndex == 2 ? true : false,
                onTap: onThisMonth,
              ),
            ],
          ),
        ),
        Text(
          'Sold',
          style: context.caption,
        ),
        5.vSpace,
        Text(
          '${salesStatusViewModel.soldAmount}ETB',
          style: context.headline4,
        ),
        20.vSpace,
        Padding(
          padding: 50.hPadding,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    'Funded',
                    style: context.caption,
                  ),
                  5.vSpace,
                  Text(
                    '${salesStatusViewModel.fundedAmount}ETB',
                    style: context.headline4,
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    'Loaned',
                    style: context.caption,
                  ),
                  5.vSpace,
                  Text(
                    '${salesStatusViewModel.loanedAmount}ETB',
                    style: context.headline4,
                  ),
                ],
              )
            ],
          ),
        ),
        60.vSpace,
        BarChart(BarChartData(
            barGroups: salesStatusViewModel.bars
                .map((BarData data) =>
                    getBar(data.x, data.barHeight, data.stackHeight))
                .toList(),
            minY: 0,
            maxY: salesStatusViewModel.maxY,
            gridData: FlGridData(drawHorizontalLine: true, show: true),
            borderData: FlBorderData(show: false)))
      ],
    );
  }
}

BarChartGroupData getBar(int x, double barHeight, double stackHeight) {
  return BarChartGroupData(x: x, barRods: [
    BarChartRodData(
      colors: [Colors.blue],
      width: 20,
      borderRadius: BorderRadius.all(Radius.circular(3)),
      y: barHeight,
      rodStackItems: [BarChartRodStackItem(0, stackHeight, Colors.red)],
    )
  ]);
}
