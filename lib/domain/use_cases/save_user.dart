import 'package:admin_app/domain/entities/user.dart';
import 'package:admin_app/domain/ports/user_repo.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class SaveUser{
  final IUserRepo _iUserRepo;

  const SaveUser(this._iUserRepo);

  Future execute(User user)async{
    return _iUserRepo.saveLoggedInUser(user);
  }
}
