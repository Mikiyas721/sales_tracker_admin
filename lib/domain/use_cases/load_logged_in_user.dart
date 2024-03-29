import 'package:admin_app/domain/entities/user.dart';
import 'package:admin_app/domain/ports/user_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class LoadLoggedInUser {
  final IUserRepo _iUserRepo;

  const LoadLoggedInUser(this._iUserRepo);

  Future<Option<User>> execute() async {
    return _iUserRepo.getCurrentLoggedInUser();
  }
}
