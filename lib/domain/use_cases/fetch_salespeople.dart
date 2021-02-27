import 'package:admin_app/common/failure.dart';
import 'package:admin_app/domain/entities/sales_person.dart';
import 'package:admin_app/domain/ports/sales_person_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class FetchSalesPeople {
  final ISalesPersonRepo _iSalesPersonRepo;

  FetchSalesPeople(this._iSalesPersonRepo);

  Future<Either<Failure, List<SalesPerson>>> execute() async{
    return _iSalesPersonRepo.fetchAll();
  }
}
