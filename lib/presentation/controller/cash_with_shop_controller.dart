import 'package:admin_app/application/fetch_cash/cash_transactions_bloc.dart';
import 'package:admin_app/common/controller/controller.dart';
import 'package:admin_app/common/mixins/date_time_mixin.dart';
import 'package:admin_app/domain/use_cases/fetch_salesperson_cash_with_shop.dart';
import 'package:admin_app/injection.dart';
import 'package:admin_app/presentation/models/cash_transaction_view_model.dart';
import 'package:admin_app/presentation/models/salespeople_view_model.dart';
import 'package:admin_app/presentation/models/shop_view_model.dart';
import 'package:flutter/cupertino.dart';

class CashWithShopController extends BlocViewModelController<
    CashTransactionsBloc,
    CashTransactionsEvent,
    CashTransactionsState,
    CashTransactionsViewModel> with DateTimeMixin {
  final BuildContext context;
  final SalespersonShopViewModel shop;
  final SalespersonViewModel salesperson;

  CashWithShopController(this.context, this.salesperson, this.shop)
      : super(getIt.get<CashTransactionsBloc>(), true);

  @override
  CashTransactionsViewModel mapStateToViewModel(CashTransactionsState s) {
    return CashTransactionsViewModel(
      cash: s.cash
          .map<CashTransactionViewModel>((e) => CashTransactionViewModel(
                time: mapTimeToMeridian(e.createdAt),
                date: getShortDateString(e.createdAt),
                amount: e.amount.value.toString(),
              ))
          .toList(),
      isLoading: s.isLoading,
      errorMessage: s.fetchingFundsFailure.getOrElse(() => null)?.message,
    );
  }

  void loadFunds() async {
    bloc.add(FetchingCashEvent());
    final result = await getIt
        .get<FetchSalespersonCashWithShop>()
        .execute(salesperson.id, shop.id);
    result.fold((l) {
      bloc.add(FetchingCashFailedEvent(l));
    }, (r) {
      bloc.add(FetchingCashSucceededEvent(r));
    });
  }
}
