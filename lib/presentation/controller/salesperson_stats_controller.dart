import 'package:admin_app/application/fetch_salesperson_stats/fetch_salesperson_stats_bloc.dart';
import 'package:admin_app/common/controller/controller.dart';
import 'package:admin_app/common/mixins/date_time_mixin.dart';
import 'package:admin_app/common/mixins/stats_mixin.dart';
import 'package:admin_app/common/mixins/toast_mixin.dart';
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
    SalesStatusViewModel> with ToastMixin, DateTimeMixin, StatsMixin {
  final BuildContext context;
  final String salespersonId;

  SalespersonStatsController(this.context, this.salespersonId)
      : super(getIt.get<FetchSalespersonStatsBloc>(), true);

  @override
  SalesStatusViewModel mapStateToViewModel(FetchSalespersonStatsState s) {
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
      bloc.add(FetchSalespersonStatsIndexChangedEvent(0));
      bloc.add(FetchSalespersonStatsLoadingEvent());
      final cardResult =
          await getIt.get<FetchSalespersonTodayCard>().execute(salespersonId);
      cardResult.fold((l) {
        bloc.add(FetchSalespersonStatsLoadingFailedEvent(l));
        toastError(l.message);
      }, (cards) async {
        final cashResult =
            await getIt.get<FetchSalespersonTodayCash>().execute(salespersonId);
        cashResult.fold((l) {
          bloc.add(FetchSalespersonStatsLoadingFailedEvent(l));
          toastError(l.message);
        }, (cash) {
          bloc.add(FetchSalespersonStatsLoadingSucceededEvent(cards, cash));
        });
      });
    }
  }

  void onThisWeek(bool isActive) async {
    if (isActive) {
      bloc.add(FetchSalespersonStatsIndexChangedEvent(1));
      bloc.add(FetchSalespersonStatsLoadingEvent());
      final cardResult = await getIt
          .get<FetchSalespersonThisWeekCard>()
          .execute(salespersonId);
      cardResult.fold((l) {
        bloc.add(FetchSalespersonStatsLoadingFailedEvent(l));
        toastError(l.message);
      }, (cards) async {
        final cashResult = await getIt
            .get<FetchSalespersonThisWeekCash>()
            .execute(salespersonId);
        cashResult.fold((l) {
          bloc.add(FetchSalespersonStatsLoadingFailedEvent(l));
          toastError(l.message);
        }, (cash) {
          bloc.add(FetchSalespersonStatsLoadingSucceededEvent(cards, cash));
        });
      });
    }
  }

  void onThisMonth(bool isActive) async {
    if (isActive) {
      bloc.add(FetchSalespersonStatsIndexChangedEvent(2));
      bloc.add(FetchSalespersonStatsLoadingEvent());
      final cardResult = await getIt
          .get<FetchSalespersonThisMonthCard>()
          .execute(salespersonId);
      cardResult.fold((l) {
        bloc.add(FetchSalespersonStatsLoadingFailedEvent(l));
        toastError(l.message);
      }, (cards) async {
        final cashResult = await getIt
            .get<FetchSalespersonThisMonthCash>()
            .execute(salespersonId);
        cashResult.fold((l) {
          bloc.add(FetchSalespersonStatsLoadingFailedEvent(l));
          toastError(l.message);
        }, (cash) {
          bloc.add(FetchSalespersonStatsLoadingSucceededEvent(cards, cash));
        });
      });
    }
  }

  void onReload() {
    if (bloc.state.activeTabIndex == 0)
      onToday(true);
    else if (bloc.state.activeTabIndex == 1)
      onThisWeek(true);
    else if (bloc.state.activeTabIndex == 2) onThisMonth(true);
  }
}
