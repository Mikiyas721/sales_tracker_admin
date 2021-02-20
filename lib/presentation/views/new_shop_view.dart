import 'package:admin_app/presentation/models/shop_view_model.dart';
import 'package:flutter/material.dart';

class NewShopView extends StatelessWidget{
  final ShopViewModel shopViewModel;

  const NewShopView({Key key, @required this.shopViewModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  return ListTile(
    leading: Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Icon(Icons.shopping_cart),
    ),
    title: Text(shopViewModel.name),
    subtitle: Text(
      '${shopViewModel.phoneNumber}\n${shopViewModel.location}',
      style: TextStyle(color: Colors.grey,fontSize: 12),
    ),
    isThreeLine: true,
  );
  }

}