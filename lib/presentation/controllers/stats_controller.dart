import 'package:admin_app/common/controller/controller.dart';
import 'package:admin_app/common/mixins/date_time_mixin.dart';
import 'package:admin_app/common/mixins/stats_mixin.dart';
import 'package:admin_app/common/mixins/toast_mixin.dart';
import 'package:admin_app/domain/use_cases/fetch_total_this_month_stats.dart';
import 'package:admin_app/domain/use_cases/fetch_total_this_week_stats.dart';
import 'package:admin_app/domain/use_cases/fetch_total_today_stats.dart';
import 'package:admin_app/injection.dart';
import 'package:admin_app/presentation/models/sales_status_view_model.dart';
import 'package:flutter/cupertino.dart';
import '../../application/fetch_total_stats/fetch_total_stats_bloc.dart';
import '../models/sales_status_view_model.dart';

class StatsController extends BlocViewModelController<
    FetchTotalStatsBloc,
    FetchTotalStatsEvent,
    FetchTotalStatsState,
    SalesStatusViewModel> with ToastMixin, DateTimeMixin, StatsMixin {
  final BuildContext context;

  StatsController(this.context) : super(getIt.get<FetchTotalStatsBloc>(), true);

  @override
  SalesStatusViewModel mapStateToViewModel(FetchTotalStatsState s) {
    return SalesStatusViewModel(
        isLoading: s.isLoading,
        loadingFailure: s.loadingError,
        activeButtonIndex: s.activeTabIndex,
        soldAmount: getSoldAmount(s.cards).toString(),
        loanedAmount:
            (getSoldAmount(s.cards) - getFundedAmount(s.cash)).toString(),
        fundedAmount: getFundedAmount(s.cash).toString(),
        bars: getBars(
          s.activeTabIndex,
          s.cards,
          s.cash,
          mapHourToMeridianHour,
          getDayOfWeekLabel,
        ));
  }

  void onToday(bool isActive) async {
    if (isActive) {
      bloc.add(FetchTotalStatsIndexChangedEvent(0));
      bloc.add(FetchTotalStatsLoadingEvent());
      final cardResult = await getIt.get<FetchTotalTodayCard>().execute();
      cardResult.fold((l) {
        bloc.add(FetchTotalStatsLoadingFailedEvent(l));
        toastError(l.message);
      }, (cards) async {
        final cashResult = await getIt.get<FetchTotalTodayCash>().execute();
        cashResult.fold((l) {
          bloc.add(FetchTotalStatsLoadingFailedEvent(l));
          toastError(l.message);
        }, (cash) {
          bloc.add(FetchTotalStatsLoadingSucceededEvent(cards, cash));
        });
      });
    }
  }

  void onThisWeek(bool isActive) async {
    if (isActive) {
      bloc.add(FetchTotalStatsIndexChangedEvent(1));
      bloc.add(FetchTotalStatsLoadingEvent());
      final cardResult = await getIt
          .get<FetchTotalThisWeekCard>()
          .execute();
      cardResult.fold((l) {
        bloc.add(FetchTotalStatsLoadingFailedEvent(l));
        toastError(l.message);
      }, (cards) async {
        final cashResult = await getIt
            .get<FetchTotalThisWeekCash>()
            .execute();
        cashResult.fold((l) {
          bloc.add(FetchTotalStatsLoadingFailedEvent(l));
          toastError(l.message);
        }, (cash) {
          bloc.add(FetchTotalStatsLoadingSucceededEvent(cards, cash));
        });
      });
    }
  }

  void onThisMonth(bool isActive) async {
    if (isActive) {
      bloc.add(FetchTotalStatsIndexChangedEvent(2));
      bloc.add(FetchTotalStatsLoadingEvent());
      final cardResult = await getIt
          .get<FetchTotalThisMonthCard>()
          .execute();
      cardResult.fold((l) {
        bloc.add(FetchTotalStatsLoadingFailedEvent(l));
        toastError(l.message);
      }, (cards) async {
        final cashResult = await getIt
            .get<FetchTotalThisMonthCash>()
            .execute();
        cashResult.fold((l) {
          bloc.add(FetchTotalStatsLoadingFailedEvent(l));
          toastError(l.message);
        }, (cash) {
          bloc.add(FetchTotalStatsLoadingSucceededEvent(cards, cash));
        });
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
