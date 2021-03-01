import 'package:admin_app/presentation/models/salespeople_view_model.dart';
import 'package:flutter/material.dart';
import '../../common/common.dart';

class SalespeopleView extends StatelessWidget {
  final SalespeopleViewModel salespeople;

  const SalespeopleView({Key key, this.salespeople}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: salespeople.salespeople.length,
        itemBuilder: (BuildContext context, int index) {
          return SalespersonView(
            salesPersonViewModel: salespeople.salespeople[index],
          );
        });
  }
}

class SalespersonView extends StatelessWidget {
  final SalespersonViewModel salesPersonViewModel;

  const SalespersonView({Key key, @required this.salesPersonViewModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.person),
      title: Text(
        salesPersonViewModel.name,
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
          Text(salesPersonViewModel.phoneNumber, style: context.caption)
        ],
      ),
      onTap: () {
        Navigator.pushNamed(context, '/salesPersonStatusPage',
            arguments: salesPersonViewModel);
      },
    );
  }
}
