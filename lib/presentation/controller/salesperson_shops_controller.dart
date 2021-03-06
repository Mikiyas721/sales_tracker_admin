import 'package:admin_app/common/controller/controller.dart';
import 'package:admin_app/domain/use_cases/fetch_salesperson_shops.dart';
import 'package:admin_app/injection.dart';
import 'package:admin_app/presentation/models/salespeople_view_model.dart';
import 'package:admin_app/presentation/models/shop_view_model.dart';
import 'package:flutter/material.dart';
import '../../application/fetch_salesperson_shop/fetch_salesperson_shop_bloc.dart';

class SalespersonShopsController extends BlocViewModelController<
    FetchSalespersonShopsBloc,
    FetchSalespersonShopsEvent,
    FetchSalespersonShopsState,
    SalespersonShopsViewModel> {
  final BuildContext context;
  final SalespersonViewModel salesperson;

  SalespersonShopsController(this.context, this.salesperson)
      : super(getIt.get<FetchSalespersonShopsBloc>(), true);

  @override
  SalespersonShopsViewModel mapStateToViewModel(FetchSalespersonShopsState s) {
    return SalespersonShopsViewModel(
        shops: s.shops
            .map<SalespersonShopViewModel>((e) => SalespersonShopViewModel(
                id: e.id,
                name: e.name.value,
                phoneNumber: e.phoneNumber.value,
                location: e.address.value))
            .toList(),
        isLoading: s.isLoading,
        errorMessage:
            s.salesPersonShopsLoadingFailure.getOrElse(() => null)?.message);
  }

  void loadShops() async {
    bloc.add(SalespersonShopsLoadingEvent());
    final salespeopleResult =
        await getIt.get<FetchSalespersonShops>().execute(salesperson.id);
    salespeopleResult.fold((l) {
      bloc.add(SalespersonShopsLoadingFailedEvent(l));
    }, (salespeople) {
      bloc.add(SalespersonShopsLoadingSucceededEvent(salespeople));
    });
  }
}
