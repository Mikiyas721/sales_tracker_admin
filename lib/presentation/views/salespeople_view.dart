import 'package:admin_app/common/widgets/simple_list_view.dart';
import 'package:admin_app/presentation/models/salespeople_view_model.dart';
import 'package:flutter/material.dart';
import '../../common/common.dart';

class SalespeopleView extends StatelessWidget {
  final SalespeopleViewModel salespeople;
  final VoidCallback onReload;

  const SalespeopleView({
    Key key,
    @required this.salespeople,
    @required this.onReload,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SimpleListView<SalespersonViewModel>(
        model: salespeople,
        itemBuilder: (BuildContext context, SalespersonViewModel model) {
          return SalespersonView._(salesperson: model);
        },
        errorView: Center(
            child: EmptyErrorView.defaultError(
          description: salespeople.errorMessage,
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

class SalespersonView extends StatelessWidget {
  final SalespersonViewModel salesperson;

  const SalespersonView._({Key key, @required this.salesperson})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.person),
      title: Text(
        salesperson.name,
        style: context.headline6,
      ),
      subtitle: Row(
        children: [
          Icon(
            Icons.phone,
            color: Colors.grey,
            size: 18,
          ),
          3.hSpace,
          Text(salesperson.phoneNumber, style: context.caption)
        ],
      ),
      trailing: Text(
        salesperson.createdDate,
        style: context.caption,
      ),
      onTap: () {
        Navigator.pushNamed(context, '/salesPersonStatusPage',
            arguments: salesperson);
      },
    );
  }
}
