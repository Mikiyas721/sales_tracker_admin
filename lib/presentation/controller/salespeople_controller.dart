import 'package:admin_app/application/fetch_salespeople/fetch_salespeople_bloc.dart';
import 'package:admin_app/common/controller/controller.dart';
import 'package:admin_app/domain/use_cases/fetch_salespeople.dart';
import 'package:admin_app/injection.dart';
import 'package:admin_app/presentation/models/salespeople_view_model.dart';
import 'package:flutter/material.dart';

class SalespeopleController extends BlocViewModelController<
    FetchSalespeopleBloc,
    FetchSalespeopleEvent,
    FetchSalespeopleState,
    SalespeopleViewModel> {
  final BuildContext context;

  SalespeopleController(this.context)
      : super(getIt.get<FetchSalespeopleBloc>(), true);

  @override
  SalespeopleViewModel mapStateToViewModel(FetchSalespeopleState s) {
    return SalespeopleViewModel(
        salespeople: s.salespeople.map((e) => SalespersonViewModel(
              id: e.id,
              name: e.name.value,
              phoneNumber: e.phoneNumber.value,
            )));
  }

  void loadSalespeople() async {
    bloc.add(SalespeopleLoadingEvent());
    final salespeopleResult = await getIt.get<FetchSalespeople>().execute();
    salespeopleResult.fold((l) {
      bloc.add(SalespeopleLoadingFailedEvent(l));
    }, (salespeople) {
      bloc.add(SalespeopleLoadingSucceededEvent(salespeople));
    });
  }
}
