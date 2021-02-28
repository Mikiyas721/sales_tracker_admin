import 'package:admin_app/presentation/models/loans_view_model.dart';
import 'package:flutter/material.dart';

class LoansView extends StatelessWidget {
  final LoansViewModel loans;

  const LoansView({Key key, this.loans}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: loans.loans.length,
        itemBuilder: (BuildContext context, int index) {
          return LoanView._(
            loan: loans.loans[index],
          );
        });
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
