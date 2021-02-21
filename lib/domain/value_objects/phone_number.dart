import 'package:dartz/dartz.dart';
import '../../common/failure.dart';

abstract class PhoneNumberFailure extends Failure {}

class InvalidPhoneNumberFailure extends PhoneNumberFailure {
  @override
  String get message => "Invalid Phone Number";
}

const regExp = r'^(?:[0]9)?[0-9]{8}$';

class PhoneNumber {
  String value;

  PhoneNumber._(this.value);

  static Either<PhoneNumberFailure, PhoneNumber> create(String phoneNumber) {
    if (!RegExp(regExp).hasMatch(phoneNumber))
      return left(InvalidPhoneNumberFailure());
    return right(PhoneNumber._(phoneNumber));
  }
  static Either<PhoneNumberFailure, PhoneNumber> createWithCountryCode(String phoneNumber) {
    if (!RegExp(regExp).hasMatch(phoneNumber))
      return left(InvalidPhoneNumberFailure());
    if(phoneNumber.startsWith('0')) {
      phoneNumber = phoneNumber.substring(1);
      return right(PhoneNumber._('+251$phoneNumber'));
    }
    return right(PhoneNumber._('+251$phoneNumber'));
  }
}
