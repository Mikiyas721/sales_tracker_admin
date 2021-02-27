import 'package:admin_app/common/failure.dart';
import 'package:admin_app/domain/entities/sales_person.dart';
import 'package:admin_app/domain/ports/sales_person_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AddSalesPerson {
  final ISalesPersonRepo _iSalesPersonRepo;

  AddSalesPerson(this._iSalesPersonRepo);

  Future<Either<Failure, SalesPerson>> execute(SalesPerson salesPerson) async {
    return _iSalesPersonRepo.create(salesPerson);
  }
}
