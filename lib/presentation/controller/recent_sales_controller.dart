import 'package:admin_app/common/controller/controller.dart';
import 'package:admin_app/domain/use_cases/fetch_recently_sold.dart';
import 'package:admin_app/injection.dart';
import 'package:admin_app/presentation/models/new_sales_view_model.dart';
import 'package:flutter/cupertino.dart';
import '../../application/fetch_recently_sold/fetch_recently_sold_bloc.dart';

class RecentSalesController extends BlocViewModelController<
    FetchRecentlySoldBloc,
    FetchRecentlySoldEvent,
    FetchRecentlySoldState,
    RecentSalesViewModel> {
  final BuildContext context;

  RecentSalesController(this.context)
      : super(getIt.get<FetchRecentlySoldBloc>(), true);

  @override
  RecentSalesViewModel mapStateToViewModel(FetchRecentlySoldState s) {
    return RecentSalesViewModel(
        newSales: s.sales.map((e) => RecentlySoldViewModel(
            name: e.salesPerson.getOrElse(() => null)?.name?.value,
            phoneNumber: e.salesPerson.getOrElse(() => null)?.phoneNumber?.value,
            amount: e.soldAmount.value.toString())));
  }
  void loadRecentSales()async{
    bloc.add(FetchingRecentlySoldEvent());
    final result = await getIt.get<FetchRecentlySold>().execute();
    result.fold((l){
      bloc.add(FetchingRecentlySoldFailedEvent(l));
    }, (r) {
      bloc.add(FetchingRecentlySoldSucceededEvent(r));
    });
  }
}
