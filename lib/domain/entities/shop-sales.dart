import 'package:admin_app/common/entity.dart';
import 'package:admin_app/domain/entities/salesperson.dart';
import 'package:admin_app/domain/entities/shop.dart';
import 'package:dartz/dartz.dart';

class ShopSales extends Entity {
  final String id;
  final String salesPersonId;
  final String shopId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final Option<Shop> shop;
  final Option<Salesperson> salesperson;

  ShopSales._(
      {this.id,
      this.salesPersonId,
      this.shopId,
      this.createdAt,
      this.updatedAt,
      this.shop,
      this.salesperson});

  static Option<ShopSales> create(
      {String id,
      String salesPersonId,
      String shopId,
      DateTime createdAt,
      DateTime updatedAt,
      Option<Shop> shop,
      Option<Salesperson> salesperson}) {
    if ([
      id,
      salesPersonId,
      shopId,
      createdAt,
      updatedAt,
    ].any((element) => element == null)) return none();
    return some(ShopSales._(
        id: id,
        salesPersonId: salesPersonId,
        shopId: shopId,
        createdAt: createdAt,
        updatedAt: updatedAt,
        shop: shop,
        salesperson: salesperson));
  }

  static Option<ShopSales> createForPostRequest(
      {String salesPersonId, String shopId}) {
    if ([salesPersonId, shopId].any((element) => element == null))
      return none();
    return some(ShopSales._(salesPersonId: salesPersonId, shopId: shopId));
  }
}
