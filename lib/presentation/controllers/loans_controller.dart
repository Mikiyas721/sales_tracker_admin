import 'package:admin_app/common/controller/controller.dart';
import 'package:admin_app/domain/use_cases/fetch_loans.dart';
import 'package:admin_app/injection.dart';
import 'package:admin_app/presentation/models/loans_view_model.dart';
import 'package:flutter/material.dart';
import '../../application/fetch_loans/fetch_loans_bloc.dart';

class LoansController extends BlocViewModelController<FetchLoansBloc,
    FetchLoansEvent, FetchLoansState, LoansViewModel> {
  final BuildContext context;

  LoansController(this.context) : super(getIt.get<FetchLoansBloc>(), true);

  @override
  LoansViewModel mapStateToViewModel(FetchLoansState s) {
    return LoansViewModel(
      loans: s.sales
          .map<LoanViewModel>((e) => LoanViewModel(
              name: e.name.value,
              phoneNumber:
                  e.phoneNumber.value,
              amount: e.balance.toString()))
          .toList(),
      loading: s.isLoading,
      errorMessage: s.fetchingSalesFailure.getOrElse(() => null)?.message,
    );
  }

  void loadLoans() async {
    bloc.add(FetchingLoansEvent());
    final result = await getIt.get<FetchLoans>().execute();
    result.fold((l) {
      bloc.add(FetchingLoansFailedEvent(l));
    }, (r) {
      bloc.add(FetchingLoansSucceededEvent(r));
    });
  }
}
