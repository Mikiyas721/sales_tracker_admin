import 'package:admin_app/domain/entities/user.dart';
import 'package:dartz/dartz.dart';

abstract class IUserRepo {
  Future saveLoggedInUser(User user);

  Future<Option<User>> getCurrentLoggedInUser();
  Future<bool> clearLoggedInUser();
}
