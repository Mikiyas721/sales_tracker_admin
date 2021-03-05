import 'package:admin_app/common/entity.dart';
import 'package:dartz/dartz.dart';
import '../entities/salesperson.dart';
import '../entities/shop.dart';
import '../value_objects/card_amount.dart';

class CardTransaction extends Entity {
  final String id;
  final String salesPersonId;
  final String shopId;
  final Option<Shop> shop;
  final Option<Salesperson> salesPerson;
  final CardAmount amount;
  final DateTime createdAt;
  final DateTime updatedAt;

  const CardTransaction._({
    this.id,
    this.salesPersonId,
    this.shopId,
    this.shop,
    this.salesPerson,
    this.amount,
    this.createdAt,
    this.updatedAt,
  });

  static Option<CardTransaction> create({
    String id,
    String salesPersonId,
    String shopId,
    Option<Shop> shop,
    Option<Salesperson> salesPerson,
    num amount,
    DateTime createdAt,
    DateTime updatedAt,
  }) {
    if ([id,
      salesPersonId,
      shopId,
      shop,
      salesPerson,
      amount,
      createdAt,
      updatedAt].any((element) => null)) return none();

    final card = CardAmount.createFromNum(amount).getOrElse(() => null);

    if(card==null) return none();
    /// It is possible for Cash Amount to be null or zero

    return some(CardTransaction._(
        id:id,
        salesPersonId:salesPersonId,
        shopId:shopId,
        shop:shop,
        salesPerson:salesPerson,
        amount:card,
        createdAt:createdAt,
        updatedAt:updatedAt,
    ));
  }
}
