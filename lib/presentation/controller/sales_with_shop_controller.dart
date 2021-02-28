import 'package:admin_app/application/fetch_sales/fetch_sales_bloc.dart';
import 'package:admin_app/common/controller/controller.dart';
import 'package:admin_app/common/date_time_mixin.dart';
import 'package:admin_app/domain/use_cases/fetch_salesperson_sales_with_shop.dart';
import 'package:admin_app/injection.dart';
import 'package:admin_app/presentation/models/sale_transaction_view_model.dart';
import 'package:flutter/cupertino.dart';

class SalesWithShopController extends BlocViewModelController<
    FetchSalesBloc,
    FetchSalesEvent,
    FetchSalesState,
    SalesTransactionsViewModel> with DateTimeMixin {
  final BuildContext context;
  final String salespersonId;
  final String shopId;

  SalesWithShopController(this.context, this.salespersonId, this.shopId)
      : super(getIt.get<FetchSalesBloc>(), true);

  @override
  SalesTransactionsViewModel mapStateToViewModel(FetchSalesState s) {
    return SalesTransactionsViewModel(s.sales
        .map((e) => SaleTransactionViewModel(
            receivedAmount: e.receivedAmount.value.toString(),
            date: getDate(e.createdAt),
            time: getDate(e.createdAt),
            soldAmount: e.soldAmount.value.toString()))
        .toList());
  }

  void loadSales() async {
    bloc.add(FetchingSalesEvent());
    final result = await getIt
        .get<FetchSalespersonSalesWithShop>()
        .execute(salespersonId, shopId);
    result.fold((l) {
      bloc.add(FetchingSalesFailedEvent(l));
    }, (r) {
      bloc.add(FetchingSalesSucceededEvent(r));
    });
  }
}
