import 'package:admin_app/common/failure.dart';
import 'package:admin_app/domain/entities/salesperson.dart';
import 'package:admin_app/domain/ports/sales_person_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class FetchSalespeople {
  final ISalesPersonRepo _iSalesPersonRepo;

  FetchSalespeople(this._iSalesPersonRepo);

  Future<Either<Failure, List<Salesperson>>> execute() async{
    return _iSalesPersonRepo.fetchAll();
  }
}
