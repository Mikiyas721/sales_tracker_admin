import 'package:admin_app/common/controller/controller.dart';
import 'package:admin_app/common/controller/toast_mixin.dart';
import 'package:admin_app/domain/use_cases/fetch_this_month_stats.dart';
import 'package:admin_app/domain/use_cases/fetch_this_week_stats.dart';
import 'package:admin_app/domain/use_cases/fetch_today_stats.dart';
import 'package:admin_app/injection.dart';
import 'package:admin_app/presentation/models/sales_status_view_model.dart';
import 'package:flutter/cupertino.dart';
import '../../application/fetch_total_stats/fetch_total_stats_bloc.dart';
import '../models/sales_status_view_model.dart';

class StatsController extends BlocViewModelController<
    FetchTotalStatsBloc,
    FetchTotalStatsEvent,
    FetchTotalStatsState,
    SalesStatusViewModel> with ToastMixin {
  final BuildContext context;

  StatsController(this.context) : super(getIt.get<FetchTotalStatsBloc>(), true);

  @override
  SalesStatusViewModel mapStateToViewModel(FetchTotalStatsState s) {
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
      bloc.add(FetchTotalStatsIndexChangedEvent(0));
      bloc.add(FetchTotalStatsLoadingEvent());
      final result = await getIt.get<FetchTodayStats>().execute();
      result.fold((l) {
        bloc.add(FetchTotalStatsLoadingFailedEvent(l));
      }, (r) {
        bloc.add(FetchTotalStatsLoadingSucceededEvent(r));
      });
    }
  }

  onThisWeek(bool isActive) async {
    if (isActive) {
      bloc.add(FetchTotalStatsIndexChangedEvent(1));
      bloc.add(FetchTotalStatsLoadingEvent());
      final result = await getIt.get<FetchThisWeekStats>().execute();
      result.fold((l) {
        bloc.add(FetchTotalStatsLoadingFailedEvent(l));
      }, (r) {
        bloc.add(FetchTotalStatsLoadingSucceededEvent(r));
      });
    }
  }

  onThisMonth(bool isActive) async {
    if (isActive) {
      bloc.add(FetchTotalStatsIndexChangedEvent(2));
      bloc.add(FetchTotalStatsLoadingEvent());
      final result = await getIt.get<FetchThisMonthStats>().execute();
      result.fold((l) {
        bloc.add(FetchTotalStatsLoadingFailedEvent(l));
      }, (r) {
        bloc.add(FetchTotalStatsLoadingSucceededEvent(r));
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
