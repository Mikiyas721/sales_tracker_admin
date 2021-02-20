import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class SalesStatusViewModel extends Equatable {
  final String title;
  final int activeButtonIndex;
  final String soldAmount;
  final String fundedAmount;
  final String loanedAmount;
  final List<BarData> bars;
  final double maxY;

  SalesStatusViewModel({
    @required this.title,
    @required this.activeButtonIndex,
    @required this.soldAmount,
    @required this.fundedAmount,
    @required this.loanedAmount,
    @required this.bars,
  }) : maxY = _getMax(bars);

  @override
  List<Object> get props =>
      [title, activeButtonIndex, soldAmount, fundedAmount, loanedAmount, bars];
}

double _getMax(List<BarData> bars) {
  double max = 0;
  bars.forEach((element) {
    if (element.barHeight > max) max = element.barHeight;
  });
  return max;
}

class BarData extends Equatable {
  final int x;
  final double barHeight;
  final double stackHeight;

  BarData({
    @required this.x,
    @required this.barHeight,
    @required this.stackHeight,
  });

  @override
  // TODO: implement props
  List<Object> get props => [
        x,
        barHeight,
        stackHeight,
      ];
}
