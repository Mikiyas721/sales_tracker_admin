import 'package:admin_app/common/widgets/simple_list_view.dart';
import 'package:admin_app/presentation/models/loans_view_model.dart';
import 'package:flutter/material.dart';

class LoansView extends StatelessWidget {
  final LoansViewModel loans;
  final VoidCallback onReload;

  const LoansView({Key key, @required this.loans, @required this.onReload})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SimpleListView<LoanViewModel>(
        model: loans,
        itemBuilder: (BuildContext context, LoanViewModel model) {
          return LoanView._(loan: model);
        },
        errorView: Center(
            child: EmptyErrorView.defaultError(
          description: loans.errorMessage,
          onAction: onReload,
        )),
        loadingView: Center(child: MyLoadingView()),
        emptyView: Center(
          child: EmptyErrorView.defaultEmpty(
            onAction: onReload,
          ),
        ));
  }
}

class LoanView extends StatelessWidget {
  final LoanViewModel loan;

  const LoanView._({Key key, this.loan}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Icon(Icons.person),
        ),
        title: Text(loan.name),
        subtitle: Text(
          loan.phoneNumber,
          style: TextStyle(color: Colors.grey, fontSize: 12),
        ),
        trailing: Text('${loan.amount}ETB'));
  }
}
