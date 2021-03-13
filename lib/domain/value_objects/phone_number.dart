import 'package:dartz/dartz.dart';
import '../../common/failure.dart';

abstract class PhoneNumberFailure extends Failure {}

class InvalidPhoneNumberFailure extends PhoneNumberFailure {
  @override
  String get message => "Invalid Phone Number";
}

const ethiopianPhoneRegex = r"^(\+?2510?9|09|9)([0-9]{8})$";

class PhoneNumber {
  String value;

  PhoneNumber._(this.value);

  static Either<PhoneNumberFailure, PhoneNumber> create(String phoneNumber) {
    final reg = RegExp(ethiopianPhoneRegex);
    final match = reg.firstMatch(phoneNumber);
    if (match == null) return left(InvalidPhoneNumberFailure());
    return right(PhoneNumber._("+2519${match.group(2)}"));
  }
}
