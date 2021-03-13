import 'package:admin_app/common/failure.dart';
import 'package:admin_app/domain/value_objects/phone_number.dart';
import 'package:admin_app/infrastructure/repos/firebase_repo_impl.dart';
import 'package:dartz/dartz.dart';

abstract class IFirebaseRepo{
  Future<PhoneAuthResult> requestCode(PhoneNumber phoneNumber);
  Future<Either<Failure, String>> verifyCode(String verificationCode);
}