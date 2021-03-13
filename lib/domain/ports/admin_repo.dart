import 'package:admin_app/common/failure.dart';
import 'package:admin_app/domain/entities/user.dart';
import 'package:admin_app/domain/value_objects/phone_number.dart';
import 'package:dartz/dartz.dart';

abstract class IAdminRepo{
  Future<Either<Failure,User>> fetchAdmin(PhoneNumber phoneNumber);
  Future<Either<Failure, Map>> login(String idToken);
}