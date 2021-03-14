import 'package:admin_app/common/entity.dart';
import 'package:dartz/dartz.dart';
import '../value_objects/name.dart';
import '../value_objects/phone_number.dart';

class Salesperson extends Entity {
  final String id;
  final Name name;
  final PhoneNumber phoneNumber;
  final DateTime createdAt;
  final DateTime updatedAt;
  final double balance;

  Salesperson._({
    this.id,
    this.name,
    this.phoneNumber,
    this.createdAt,
    this.updatedAt,
    this.balance,
  });

  static Option<Salesperson> create({
    String id,
    String name,
    String phoneNumber,
    DateTime createdAt,
    DateTime updatedAt,
    double balance,
  }) {
    if ([
      id,
      name,
      phoneNumber,
      createdAt,
      updatedAt,
    ].any((element) => element == null)) return none();
    final nameObject = Name.create(name).getOrElse(() => null);
    final phoneNumberObject =
        PhoneNumber.create(phoneNumber).getOrElse(() => null);
    if (nameObject == null) return none();
    if (phoneNumberObject == null) return none();
    return some(Salesperson._(
      id: id,
      name: nameObject,
      phoneNumber: phoneNumberObject,
      createdAt: createdAt,
      updatedAt: updatedAt,
      balance: balance
    ));
  }

  static Option<Salesperson> createFromInputs(
      {Name name, PhoneNumber phoneNumber}) {
    if ([name, phoneNumber].any((element) => element == null)) return none();
    return some(Salesperson._(
      name: name,
      phoneNumber: phoneNumber,
    ));
  }
}
