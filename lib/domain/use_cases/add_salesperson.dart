import 'package:admin_app/common/failure.dart';
import 'package:admin_app/domain/entities/salesperson.dart';
import 'package:admin_app/domain/ports/sales_person_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AddSalesperson {
  final ISalesPersonRepo _iSalesPersonRepo;

  AddSalesperson(this._iSalesPersonRepo);

  Future<Either<Failure, Salesperson>> execute(Salesperson salesPerson) async {
    return _iSalesPersonRepo.create(salesPerson);
  }
}
