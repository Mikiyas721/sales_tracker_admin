import 'package:dartz/dartz.dart';
import '../../common/failure.dart';
import '../../domain/entities/cash_transaction.dart';

abstract class ICashTransactionRepo {
  Future<Either<Failure,List<CashTransaction>>> fetchFundTransactions(String salesPersonId, String shopId);

  Future<Either<Failure, List<CashTransaction>>> fetchFundedToday({String salespersonId});
  Future<Either<Failure, List<CashTransaction>>> fetchFundedThisWeek({String salespersonId});
  Future<Either<Failure, List<CashTransaction>>> fetchFundedThisMonth({String salespersonId});
}
