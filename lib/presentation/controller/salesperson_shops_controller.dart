import 'package:admin_app/common/controller/controller.dart';
import 'package:admin_app/domain/use_cases/fetch_salesperson_shops.dart';
import 'package:admin_app/injection.dart';
import 'package:admin_app/presentation/models/shop_view_model.dart';
import 'package:flutter/cupertino.dart';
import '../../application/fetch_salesperson_shop/fetch_salesperson_shop_bloc.dart';

class SalespersonShopsController extends BlocViewModelController<
    FetchSalespersonShopsBloc,
    FetchSalespersonShopsEvent,
    FetchSalespersonShopsState,
    SalespersonShopsViewModel> {
  final BuildContext context;
  final String salespersonId;

  SalespersonShopsController(this.context, this.salespersonId)
      : super(getIt.get<FetchSalespersonShopsBloc>(), true);

  @override
  SalespersonShopsViewModel mapStateToViewModel(FetchSalespersonShopsState s) {
    return SalespersonShopsViewModel(
        shops: s.shops
            .map((e) => SalespersonShopViewModel(
                name: e.name.value,
                phoneNumber: e.phoneNumber.value,
                location: e.address.value))
            .toList());
  }
  void loadShops() async {
    bloc.add(SalespersonShopsLoadingEvent());
    final salespeopleResult = await getIt.get<FetchSalespersonShops>().execute(salespersonId);
    salespeopleResult.fold((l) {
      bloc.add(SalespersonShopsLoadingFailedEvent(l));
    }, (salespeople) {
      bloc.add(SalespersonShopsLoadingSucceededEvent(salespeople));
    });
  }
}
