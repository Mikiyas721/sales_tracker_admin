import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import '../../presentation/models/shop_view_model.dart';
import '../../common/common.dart';

class SalespersonShopsView extends StatelessWidget {
  final SalespersonShopsViewModel salespeople;

  const SalespersonShopsView({Key key, this.salespeople}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: salespeople.shops.length,
        itemBuilder: (BuildContext context, int index) {
          return SalespersonShopView(
            shopViewModel: salespeople.shops[index],
          );
        });
  }
}

class SalespersonShopView extends StatelessWidget {
  final SalespersonShopViewModel shopViewModel;

  const SalespersonShopView({Key key, @required this.shopViewModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Slidable(
      actionPane: SlidableDrawerActionPane(),
      child: ListTile(
        leading: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Icon(Icons.shopping_cart),
        ),
        title: Text(shopViewModel.name),
        subtitle: Text(
          '${shopViewModel.phoneNumber}\n${shopViewModel.location}',
          style: TextStyle(color: Colors.grey, fontSize: 12),
        ),
        isThreeLine: true,
      ),
      actions: [
        IconSlideAction(
          icon: Icons.swap_horiz,
          caption: 'Sales',
          onTap: () {},
          color: context.primaryColor,
          foregroundColor: Colors.white,
        ),
      ],
      secondaryActions: [
        IconSlideAction(
          icon: Icons.attach_money,
          caption: 'Funds',
          onTap: () {},
          color: context.primaryColor,
          foregroundColor: Colors.white,
        ),
      ],
    );
  }
}
