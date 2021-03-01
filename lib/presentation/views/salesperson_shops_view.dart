import 'package:admin_app/presentation/models/salespeople_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import '../../presentation/models/shop_view_model.dart';
import '../../common/common.dart';

class SalespersonShopsView extends StatelessWidget {
  final SalespersonShopsViewModel salespersonShops;
  final SalespersonViewModel salespersonViewModel;

  const SalespersonShopsView(
      {Key key, this.salespersonShops, this.salespersonViewModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: salespersonShops.shops.length,
        itemBuilder: (BuildContext context, int index) {
          return SalespersonShopView(
            shopViewModel: salespersonShops.shops[index],
            salespersonViewModel: salespersonViewModel,
          );
        });
  }
}

class SalespersonShopView extends StatelessWidget {
  final SalespersonShopViewModel shopViewModel;
  final SalespersonViewModel salespersonViewModel;

  const SalespersonShopView(
      {Key key,
      @required this.shopViewModel,
      @required this.salespersonViewModel})
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
          onTap: () {
            Navigator.pushNamed(context, '/saleTransactionsPage', arguments: {
              'Salesperson': salespersonViewModel,
              'Shop': shopViewModel
            });
          },
          color: context.primaryColor,
          foregroundColor: Colors.white,
        ),
      ],
      secondaryActions: [
        IconSlideAction(
          icon: Icons.attach_money,
          caption: 'Funds',
          onTap: () {
            Navigator.pushNamed(context, '/fundTransactionsPage', arguments: {
              'Salesperson': salespersonViewModel,
              'Shop': shopViewModel
            });
          },
          color: context.primaryColor,
          foregroundColor: Colors.white,
        ),
      ],
    );
  }
}
