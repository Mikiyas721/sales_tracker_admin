import 'package:admin_app/common/failure.dart';
import 'package:admin_app/domain/entities/user.dart';
import 'package:admin_app/domain/ports/admin_repo.dart';
import 'package:admin_app/domain/value_objects/phone_number.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class FetchAdmin {
  final IAdminRepo _iAdminRepo;

  const FetchAdmin(this._iAdminRepo);

  Future<Either<Failure, User>> execute(PhoneNumber phoneNumber)async{
    return _iAdminRepo.fetchAdmin(phoneNumber);
  }
}
