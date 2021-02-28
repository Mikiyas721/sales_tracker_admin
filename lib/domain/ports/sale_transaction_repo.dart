import 'package:admin_app/domain/entities/shop.dart';
import 'package:dartz/dartz.dart';
import '../../common/failure.dart';
import '../../domain/entities/sell_transaction.dart';

abstract class ISaleTransactionRepo{
  Future<Either<Failure,List<SaleTransaction>>> fetchSaleTransactions(String salesPersonId, String shopId);

  Future<Either<Failure, List<SaleTransaction>>> fetchSoldToday({String salesPersonId});
  Future<Either<Failure, List<SaleTransaction>>> fetchSoldThisWeek({String salesPersonId});
  Future<Either<Failure, List<SaleTransaction>>> fetchSoldThisMonth({String salesPersonId});

  Future<Either<Failure, List<SaleTransaction>>> fetchLoans();
  Future<Either<Failure, List<SaleTransaction>>> fetchRecentlySold();
}