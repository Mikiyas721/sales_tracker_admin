import 'package:admin_app/presentation/models/new_shops_view_model.dart';
import 'package:flutter/material.dart';

class NewShopsView extends StatelessWidget {
  final NewShopsViewModel newShopsViewModel;

  const NewShopsView({Key key, this.newShopsViewModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: newShopsViewModel.newShops.length,
        itemBuilder: (BuildContext context, int index) {
          return NewShopView._(
            newShopViewModel: newShopsViewModel.newShops[index],
          );
        });
  }
}

class NewShopView extends StatelessWidget {
  final NewShopViewModel newShopViewModel;

  const NewShopView._({Key key, @required this.newShopViewModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Icon(Icons.shopping_cart),
      ),
      title: Text(newShopViewModel.name),
      subtitle: Text(
        '${newShopViewModel.phoneNumber}\n${newShopViewModel.address}',
        style: TextStyle(color: Colors.grey, fontSize: 12),
      ),
      isThreeLine: true,
    );
  }
}
