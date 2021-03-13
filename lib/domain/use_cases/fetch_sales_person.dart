import 'package:admin_app/common/failure.dart';
import 'package:admin_app/domain/entities/salesperson.dart';
import 'package:admin_app/domain/ports/sales_person_repo.dart';
import 'package:admin_app/domain/value_objects/phone_number.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class FetchSalesPerson {
  final ISalesPersonRepo _iSalesPersonRepo;

  const FetchSalesPerson(this._iSalesPersonRepo);

  Future<Either<Failure, Salesperson>> execute(PhoneNumber phoneNumber)async{
    return _iSalesPersonRepo.fetchSalesperson(phoneNumber);
  }
}
