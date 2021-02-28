import 'package:admin_app/application/fetch_salesperson_stats/fetch_salesperson_stats_bloc.dart';
import 'package:admin_app/common/controller/controller.dart';
import 'package:admin_app/common/controller/toast_mixin.dart';
import 'package:admin_app/domain/use_cases/fetch_salesperson_this_month_stats.dart';
import 'package:admin_app/domain/use_cases/fetch_salesperson_this_week_stats.dart';
import 'package:admin_app/domain/use_cases/fetch_salesperson_today_stats.dart';
import 'package:admin_app/injection.dart';
import 'package:admin_app/presentation/models/sales_status_view_model.dart';
import 'package:flutter/material.dart';
import '../models/sales_status_view_model.dart';

class SalespersonStatsController extends BlocViewModelController<
    FetchSalespersonStatsBloc,
    FetchSalespersonStatsEvent,
    FetchSalespersonStatsState,
    SalesStatusViewModel> with ToastMixin {
  final BuildContext context;
  final String salesPersonId;

  SalespersonStatsController(this.context, this.salesPersonId)
      : super(getIt.get<FetchSalespersonStatsBloc>(), true);

  @override
  SalesStatusViewModel mapStateToViewModel(FetchSalespersonStatsState s) {
    return SalesStatusViewModel(
        activeButtonIndex: s.activeTabIndex,
        soldAmount: s.stats.totalSoldAmount.toString(),
        fundedAmount: s.stats.totalFundedAmount.toString(),
        loanedAmount: s.stats.totalLoanedAmount.toString(),
        bars: s.stats.detailedData
            .map((e) => BarData(
                value: e.hashCode,
                label: e.label,
                barHeight: e.total,
                stackHeight: e.part))
            .toList());
  }

  onToday(bool isActive) async {
    if (isActive) {
      bloc.add(FetchSalespersonStatsIndexChangedEvent(0));
      bloc.add(FetchSalespersonStatsLoadingEvent());
      final result =
          await getIt.get<FetchSalespersonTodayStats>().execute(salesPersonId);
      result.fold((l) {
        bloc.add(FetchSalespersonStatsLoadingFailedEvent(l));
      }, (r) {
        bloc.add(FetchSalespersonStatsLoadingSucceededEvent(r));
      });
    }
  }

  onThisWeek(bool isActive) async {
    if (isActive) {
      bloc.add(FetchSalespersonStatsIndexChangedEvent(1));
      bloc.add(FetchSalespersonStatsLoadingEvent());
      final result = await getIt
          .get<FetchSalespersonThisWeekStats>()
          .execute(salesPersonId);
      result.fold((l) {
        bloc.add(FetchSalespersonStatsLoadingFailedEvent(l));
      }, (r) {
        bloc.add(FetchSalespersonStatsLoadingSucceededEvent(r));
      });
    }
  }

  onThisMonth(bool isActive) async {
    if (isActive) {
      bloc.add(FetchSalespersonStatsIndexChangedEvent(2));
      bloc.add(FetchSalespersonStatsLoadingEvent());
      final result = await getIt
          .get<FetchSalespersonThisMonthStats>()
          .execute(salesPersonId);
      result.fold((l) {
        bloc.add(FetchSalespersonStatsLoadingFailedEvent(l));
      }, (r) {
        bloc.add(FetchSalespersonStatsLoadingSucceededEvent(r));
      });
    }
  }

  onRefresh() {
    if (bloc.state.activeTabIndex == 0)
      onToday(true);
    else if (bloc.state.activeTabIndex == 1)
      onThisWeek(true);
    else if (bloc.state.activeTabIndex == 2) onThisMonth(true);
  }
}
