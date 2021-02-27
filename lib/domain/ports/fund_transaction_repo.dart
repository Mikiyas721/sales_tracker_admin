import 'package:dartz/dartz.dart';
import '../../common/failure.dart';
import '../../domain/entities/fund_transaction.dart';

abstract class IFundTransactionRepo {
  Future<Either<Failure,List<FundTransaction>>> fetchFundTransactions(String salesPersonId, String shopId);

  Future<Either<Failure, List<FundTransaction>>> fetchFundedToday({String salesPersonId});
  Future<Either<Failure, List<FundTransaction>>> fetchFundedThisWeek({String salesPersonId});
  Future<Either<Failure, List<FundTransaction>>> fetchFundedThisMonth({String salesPersonId});
}
