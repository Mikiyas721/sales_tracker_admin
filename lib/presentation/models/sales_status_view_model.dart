import 'package:admin_app/common/failure.dart';
import 'package:admin_app/common/view_model.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class SalesStatusViewModel extends ViewModel {
  final int activeButtonIndex;
  final Option<Failure> loadingFailure;
  final bool isLoading;
  final String soldAmount;
  final String fundedAmount;
  final String loanedAmount;
  final List<BarData> bars;
  final double maxY;

  SalesStatusViewModel({
    @required this.activeButtonIndex,
    @required this.loadingFailure,
    @required this.isLoading,
    @required this.soldAmount,
    @required this.fundedAmount,
    @required this.loanedAmount,
    @required this.bars,
  }) : maxY = _getMax(bars);

  @override
  List<Object> get props => [
        activeButtonIndex,
        loadingFailure,
        isLoading,
        soldAmount,
        fundedAmount,
        loanedAmount,
        bars
      ];
}

double _getMax(List<BarData> bars) {
  double max = 0;
  bars.forEach((element) {
    if (element.barHeight > max) max = element.barHeight;
  });
  return max;
}

class BarData extends Equatable {
  final int value;
  final String label;
  final double barHeight;
  final double stackHeight;

  BarData({
    @required this.value,
    @required this.label,
    @required this.barHeight,
    @required this.stackHeight,
  });

  @override
  List<Object> get props => [
        value,
        label,
        barHeight,
        stackHeight,
      ];
}
