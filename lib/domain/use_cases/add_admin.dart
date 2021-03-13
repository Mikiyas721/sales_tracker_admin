import 'package:admin_app/common/failure.dart';
import 'package:admin_app/domain/entities/user.dart';
import 'package:admin_app/domain/ports/admin_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AddAdmin {
  final IAdminRepo _iAdminRepo;

  AddAdmin(this._iAdminRepo);

  Future<Either<Failure, User>> execute(User user) async {
    return _iAdminRepo.create(user);
  }
}
