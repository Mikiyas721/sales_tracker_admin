import 'package:admin_app/common/widgets/simple_list_view.dart';
import 'package:admin_app/presentation/models/new_shops_view_model.dart';
import 'package:flutter/material.dart';

class NewShopsView extends StatelessWidget {
  final NewShopsViewModel newShops;
  final VoidCallback onReload;

  const NewShopsView({
    Key key,
    @required this.newShops,
    @required this.onReload,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SimpleListView<NewShopViewModel>(
        model: newShops,
        itemBuilder: (BuildContext context, NewShopViewModel model) {
          return NewShopView._(newShop: model);
        },
        errorView: Center(
            child: EmptyErrorView.defaultError(
          description: newShops.errorMessage,
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

class NewShopView extends StatelessWidget {
  final NewShopViewModel newShop;

  const NewShopView._({Key key, @required this.newShop}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Icon(Icons.shopping_cart),
      ),
      title: Text(newShop.name),
      subtitle: Text(
        '${newShop.phoneNumber}\n${newShop.address}',
        style: TextStyle(color: Colors.grey, fontSize: 12),
      ),
      isThreeLine: true,
    );
  }
}
