import 'package:admin_app/common/failure.dart';
import 'package:admin_app/common/id_dto.dart';
import 'package:admin_app/domain/entities/fund_transaction.dart';
import 'package:admin_app/domain/entities/salesperson.dart';
import 'package:admin_app/domain/entities/sell_transaction.dart';
import 'package:admin_app/domain/ports/sales_person_repo.dart';
import 'package:admin_app/infrastructure/data_sources/sales_person_data_source.dart';
import 'package:admin_app/infrastructure/dto/sales_person_dto.dart';
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
}
