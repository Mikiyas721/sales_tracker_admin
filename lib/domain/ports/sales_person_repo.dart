import 'package:admin_app/domain/entities/sell_transaction.dart';
import 'package:admin_app/domain/entities/fund_transaction.dart';
import 'package:dartz/dartz.dart';
import '../../common/failure.dart';
import '../../domain/entities/sales_person.dart';

abstract class ISalesPersonRepo{
  Future<Either<Failure, SalesPerson>> create(SalesPerson salesPerson);
  Future<Either<Failure,List<SalesPerson>>> fetchAll();




}