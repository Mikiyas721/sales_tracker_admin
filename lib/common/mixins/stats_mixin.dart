import 'package:admin_app/domain/entities/card_transaction.dart';
import 'package:admin_app/domain/entities/cash_transaction.dart';
import 'package:admin_app/presentation/models/sales_status_view_model.dart';

mixin StatsMixin {
  int getSoldAmount(List<CardTransaction> cards) {
    int total = 0;
    cards?.forEach((element) {
      total += element.amount.value;
    });
    return total;
  }

  double getFundedAmount(List<CashTransaction> cash) {
    double total = 0;
    cash?.forEach((element) {
      total += element.amount.value;
    });
    return total;
  }

  List<BarData> getBars(
      int activeButtonIndex,
      List<CardTransaction> cards,
      List<CashTransaction> cash,
      String Function(int index) todayLabelMapper,
      String Function(int index) thisWeekLabelMapper) {
    if (cards.isEmpty && cash.isEmpty) return [];
    if (activeButtonIndex == 0)
      return getTodayBars(cards, cash, todayLabelMapper);
    else if (activeButtonIndex == 1)
      return getThisWeekBars(cards, cash, thisWeekLabelMapper);
    else
      return getThisMonthBars(cards, cash);
  }

  List<BarData> getTodayBars(List<CardTransaction> cards,
      List<CashTransaction> cash, String Function(int index) mapper) {
    List<BarData> barData = [];
    for (int i = 9; i < 18; i++) {
      double barHeight = 0;
      double stackHeight = 0;
      cards?.forEach((element) {
        if (element.createdAt.hour == i - 1) barHeight += element.amount.value;
      });
      cash?.forEach((element) {
        if (element.createdAt.hour == i - 1)
          stackHeight += element.amount.value;
      });
      barData.add(BarData(
          value: i,
          label: mapper(i),
          barHeight: barHeight,
          stackHeight: stackHeight));
    }
    return barData;
  }

  List<BarData> getThisWeekBars(List<CardTransaction> cards,
      List<CashTransaction> cash, String Function(int index) mapper) {
    List<BarData> barData = [];
    for (int i = 1; i < 8; i++) {
      double barHeight = 0;
      double stackHeight = 0;
      cards?.forEach((element) {
        if (element.createdAt.weekday == i) barHeight += element.amount.value;
      });
      cash?.forEach((element) {
        if (element.createdAt.weekday == i) stackHeight += element.amount.value;
      });
      barData.add(BarData(
          value: i,
          label: mapper(i),
          barHeight: barHeight,
          stackHeight: stackHeight));
    }
    return barData;
  }

  List<BarData> getThisMonthBars(
      List<CardTransaction> cards, List<CashTransaction> cash) {
    List<BarData> barData = [];
    for (int i = 0; i < 4; i++) {
      double barHeight = 0;
      double stackHeight = 0;
      cards?.forEach((element) {
        if (element.createdAt.day >= (i * 7) + 1 &&
            element.createdAt.day <= (i + 1) * 7)
          barHeight += element.amount.value;
      });
      cash?.forEach((element) {
        if (element.createdAt.day >= (i * 7) + 1 &&
            element.createdAt.day <= (i + 1) * 7)
          stackHeight += element.amount.value;
      });
      barData.add(BarData(
          value: i,
          label: (i + 1).toString(),
          barHeight: barHeight,
          stackHeight: stackHeight));
    }
    return barData;
  }
}
