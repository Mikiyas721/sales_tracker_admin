import 'package:admin_app/common/failure.dart';
import 'package:admin_app/domain/ports/admin_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class LoginIntoApi {
  final IAdminRepo _iAdminRepo;

  const LoginIntoApi(this._iAdminRepo);

  Future<Either<Failure, Map>> execute(String idToken) {
    return _iAdminRepo.login(idToken);
  }
}
