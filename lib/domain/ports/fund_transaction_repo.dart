import 'package:dartz/dartz.dart';
import '../../common/failure.dart';
import '../../domain/entities/fund_transaction.dart';

abstract class IFundTransactionRepo {
  Future<Either<Failure,List<FundTransaction>>> fetchFunds(String salesPersonId, String shopId);
}
