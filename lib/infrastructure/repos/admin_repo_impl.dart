import 'package:admin_app/common/failure.dart';
import 'package:admin_app/domain/entities/user.dart';
import 'package:admin_app/domain/ports/admin_repo.dart';
import 'package:admin_app/domain/value_objects/phone_number.dart';
import 'package:admin_app/infrastructure/data_sources/admin_datasource.dart';
import 'package:admin_app/infrastructure/dtos/user_dto.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as:IAdminRepo)
class AdminRepoImpl extends IAdminRepo{
  final AdminCrudDataSource _adminCrudDataSource;

  AdminRepoImpl(this._adminCrudDataSource);
  @override
  Future<Either<Failure, User>> fetchAdmin(PhoneNumber phoneNumber) async {
    print(phoneNumber.value);
    final salesPeople = await _adminCrudDataSource.find(options: {
      "filter": {
        "where": {
          "phoneNumber": phoneNumber.value,
        }
      }
    });
    return salesPeople.either.fold((l) => left(l), (r) {
      if (r.isEmpty)
        return left(SimpleFailure("No Such Admin.Please ask to be registered first."));
      else
        return r[0]
            .toDomain()
            .fold(() => left(SimpleFailure('Unable to change to Domain')), (a) => right(a));
    });
  }

  Future<Either<Failure, Map>> login(String idToken)async{
    final result = await _adminCrudDataSource.logIn(idToken);
    return result.fold((l)=>left(l), (r) => right(r.value));
  }
  @override
  Future<Either<Failure, User>> create(User user) async {
    final result = await _adminCrudDataSource
        .create(UserDto.fromDomain(user));
    return result.either.fold(
            (l) => left(l),
            (r) => r
            .toDomain()
            .fold(() => left(SimpleFailure("Invalid Admin Data")), (a) => right(a)));
  }
}