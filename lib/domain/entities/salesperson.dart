import 'package:admin_app/common/entity.dart';
import 'package:dartz/dartz.dart';
import '../value_objects/name.dart';
import '../value_objects/phone_number.dart';

class Salesperson extends Entity {
  final String id;
  final Name name;
  final PhoneNumber phoneNumber;
  final List<String> shops;
  final DateTime createdAt;
  final DateTime updatedAt;

  Salesperson._({
    this.id,
    this.name,
    this.phoneNumber,
    this.shops,
    this.createdAt,
    this.updatedAt,
  });

  static Option<Salesperson> create({
    String id,
    String name,
    String phoneNumber,
    List<String> shops,
    DateTime createdAt,
    DateTime updatedAt,
  }) {
    if ([
      id,
      name,
      phoneNumber,
      shops,
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
      shops: shops,
      createdAt: createdAt,
      updatedAt: updatedAt,
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