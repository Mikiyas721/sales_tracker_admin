import 'package:admin_app/common/failure.dart';
import 'package:admin_app/domain/ports/sales_person_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class LoginIntoApi {
  final ISalesPersonRepo _iSalesPersonRepo;

  const LoginIntoApi(this._iSalesPersonRepo);

  Future<Either<Failure, Map>> execute(String idToken) {
    return _iSalesPersonRepo.login(idToken);
  }
}
