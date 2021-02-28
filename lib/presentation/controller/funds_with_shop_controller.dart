import 'package:admin_app/application/fetch_funds/fetch_funds_bloc.dart';
import 'package:admin_app/common/controller/controller.dart';
import 'package:admin_app/common/date_time_mixin.dart';
import 'package:admin_app/domain/use_cases/fetch_salesperson_funds_with_shop.dart';
import 'package:admin_app/injection.dart';
import 'package:admin_app/presentation/models/fund_transaction_view_model.dart';
import 'package:flutter/cupertino.dart';

class FundsWithShopController extends BlocViewModelController<
    FetchFundsBloc,
    FetchFundsEvent,
    FetchFundsState,
    FundTransactionsViewModel> with DateTimeMixin {
  final BuildContext context;
  final String salespersonId;
  final String shopId;

  FundsWithShopController(this.context, this.salespersonId, this.shopId)
      : super(getIt.get<FetchFundsBloc>(), true);

  @override
  FundTransactionsViewModel mapStateToViewModel(FetchFundsState s) {
    return FundTransactionsViewModel(s.funds
        .map((e) => FundTransactionViewModel(
        receivedAmount: e.amount.value.toString(),
        date: getDate(e.createdAt),
        time: getDate(e.createdAt),))
        .toList());
  }

  void loadSales() async {
    bloc.add(FetchingFundsEvent());
    final result = await getIt
        .get<FetchSalespersonFundsWithShop>()
        .execute(salespersonId, shopId);
    result.fold((l) {
      bloc.add(FetchingFundsFailedEvent(l));
    }, (r) {
      bloc.add(FetchingFundsSucceededEvent(r));
    });
  }
}
