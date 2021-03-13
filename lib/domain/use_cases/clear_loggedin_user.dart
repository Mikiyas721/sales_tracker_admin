import 'package:admin_app/domain/ports/user_repo.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ClearLoggedInUser {
  final IUserRepo _iUserRepo;

  ClearLoggedInUser(this._iUserRepo);

  Future<bool> execute() {
    return _iUserRepo.clearLoggedInUser();
  }
}
