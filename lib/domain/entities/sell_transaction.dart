import 'package:admin_app/common/entity.dart';
import 'package:dartz/dartz.dart';
import '../entities/sales_person.dart';
import '../entities/shop.dart';
import '../value_objects/card_amount.dart';
import '../value_objects/cash_amount.dart';

class SaleTransaction extends Entity {
  final String id;
  final String salesPersonId;
  final String shopId;
  final Option<Shop> shop;
  final Option<SalesPerson> salesPerson;
  final CardAmount soldAmount;
  final CashAmount receivedAmount;
  final DateTime createdAt;
  final DateTime updatedAt;

  const SaleTransaction._({
    this.id,
    this.salesPersonId,
    this.shopId,
    this.shop,
    this.salesPerson,
    this.soldAmount,
    this.receivedAmount,
    this.createdAt,
    this.updatedAt,
  });

  static Option<SaleTransaction> create({
    String id,
    String salesPersonId,
    String shopId,
    Option<Shop> shop,
    Option<SalesPerson> salesPerson,
    num soldAmount,
    num receivedAmount,
    DateTime createdAt,
    DateTime updatedAt,
  }) {
    if ([id,
      salesPersonId,
      shopId,
      shop,
      salesPerson,
      soldAmount,
      receivedAmount,
      createdAt,
      updatedAt].any((element) => null)) return none();

    final card = CardAmount.createFromNum(soldAmount).getOrElse(() => null);
    final cash = CashAmount.createFromNum(receivedAmount).getOrElse(() => null);

    if(card==null) return none();
    /// It is possible for Cash Amount to be null or zero

    return some(SaleTransaction._(
        id:id,
        salesPersonId:salesPersonId,
        shopId:shopId,
        shop:shop,
        salesPerson:salesPerson,
        soldAmount:card,
        receivedAmount:cash,
        createdAt:createdAt,
        updatedAt:updatedAt,
    ));
  }
}
