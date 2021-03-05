import 'package:admin_app/common/widgets/simple_list_view.dart';
import 'package:admin_app/presentation/models/new_sales_view_model.dart';
import 'package:flutter/material.dart';

class RecentSalesView extends StatelessWidget {
  final RecentSalesViewModel newSales;
  final VoidCallback onReload;

  const RecentSalesView({
    Key key,
    @required this.newSales,
    @required this.onReload,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SimpleListView<RecentlySoldViewModel>(
        model: newSales,
        itemBuilder: (BuildContext context, RecentlySoldViewModel model) {
          return RecentlySoldView._(recentlySold: model);
        },
        errorView: Center(
            child: EmptyErrorView.defaultError(
              description: newSales.errorMessage,
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

class RecentlySoldView extends StatelessWidget {
  final RecentlySoldViewModel recentlySold;

  const RecentlySoldView._({Key key, this.recentlySold})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Icon(Icons.person),
        ),
        title: Text(recentlySold.name),
        subtitle: Text(
          recentlySold.phoneNumber,
          style: TextStyle(color: Colors.grey, fontSize: 12),
        ),
        trailing: Text('${recentlySold.amount}ETB'));
  }
}
