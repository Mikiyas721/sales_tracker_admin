import 'package:admin_app/common/controller/controller_provider.dart';
import 'package:admin_app/common/widgets/simple_list_view.dart';
import 'package:admin_app/presentation/controller/salesperson_shops_controller.dart';
import 'package:admin_app/presentation/models/salespeople_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import '../../presentation/models/shop_view_model.dart';
import '../../common/common.dart';

class SalespersonShopsView extends StatelessWidget {
  final SalespersonShopsViewModel salespersonShops;
  final SalespersonViewModel salespersonViewModel;
  final VoidCallback onReload;

  const SalespersonShopsView({
    Key key,
    @required this.salespersonShops,
    @required this.salespersonViewModel,
    @required this.onReload,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<SalespersonShopsController>(context);
    return SimpleListView<SalespersonShopViewModel>(
        model: salespersonShops,
        itemBuilder: (BuildContext context, SalespersonShopViewModel model) {
          return SalespersonShopView._(
              shopViewModel: model, salespersonViewModel: salespersonViewModel);
        },
        errorView: Center(
            child: EmptyErrorView.defaultError(
          description: salespersonShops.errorMessage,
          onAction: onReload,
        )),
        loadingView: Center(child: MyLoadingView()),
        emptyView: Center(
          child: EmptyErrorView.defaultEmpty(
            onAction: onReload,
            description: '${controller.salesperson.name} has no shops',
          ),
        ));
  }
}

class SalespersonShopView extends StatelessWidget {
  final SalespersonShopViewModel shopViewModel;
  final SalespersonViewModel salespersonViewModel;

  const SalespersonShopView._(
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
            Navigator.pushNamed(context, '/cardTransactionsPage', arguments: {
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
            Navigator.pushNamed(context, '/cashTransactionsPage', arguments: {
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
