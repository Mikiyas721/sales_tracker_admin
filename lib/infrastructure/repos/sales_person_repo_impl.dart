import 'package:admin_app/common/failure.dart';
import 'package:admin_app/common/id_dto.dart';
import 'package:admin_app/domain/entities/salesperson.dart';
import 'package:admin_app/domain/ports/sales_person_repo.dart';
import 'package:admin_app/domain/value_objects/phone_number.dart';
import 'package:admin_app/infrastructure/data_sources/sales_person_data_source.dart';
import 'package:admin_app/infrastructure/dtos/sales_person_dto.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ISalesPersonRepo)
class SalesPersonRepoImpl extends ISalesPersonRepo {
  SalesPersonCrudDataSource salesPersonCrudDataSource;

  SalesPersonRepoImpl(this.salesPersonCrudDataSource);

  @override
  Future<Either<Failure, Salesperson>> create(Salesperson salesPerson) async {
    final result = await salesPersonCrudDataSource
        .create(SalespersonDto.fromDomain(salesPerson));
    return result.either.fold(
        (l) => left(l),
        (r) => r
            .toDomain()
            .fold(() => left(SimpleFailure("Invalid Sales Person Data")), (a) => right(a)));
  }

  @override
  Future<Either<Failure, List<Salesperson>>> fetchAll() async {
    final result = await salesPersonCrudDataSource.find();
    return result.either.fold((l) => left(l),
        (r) => right(IdDto.toDomainList<Salesperson, SalespersonDto>(r)));
  }
  @override
  Future<Either<Failure, Salesperson>> fetchSalesperson(PhoneNumber phoneNumber) async {
    print(phoneNumber.value);
    final salesPeople = await salesPersonCrudDataSource.find(options: {
      "filter": {
        "where": {
          "phoneNumber": phoneNumber.value,
        }
      }
    });
    return salesPeople.either.fold((l) => left(l), (r) {
      if (r.isEmpty)
        return left(SimpleFailure("No Such User.Please ask to be registered first."));
      else
        return r[0]
            .toDomain()
            .fold(() => left(SimpleFailure('Unable to change to Domain')), (a) => right(a));
    });
  }

  Future<Either<Failure, Map>> login(String idToken)async{
    final result = await salesPersonCrudDataSource.logIn(idToken);
    return result.fold((l)=>left(l), (r) => right(r.value));
  }
}
