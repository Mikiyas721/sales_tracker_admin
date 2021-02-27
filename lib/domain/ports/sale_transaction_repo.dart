import 'package:dartz/dartz.dart';
import '../../common/failure.dart';
import '../../domain/entities/sell_transaction.dart';

abstract class ISaleTransactionRepo{
  Future<Either<Failure,List<SaleTransaction>>> fetchSaleTransactions(String salesPersonId, String shopId);
}