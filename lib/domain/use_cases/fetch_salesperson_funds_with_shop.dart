import 'package:admin_app/common/failure.dart';
import 'package:admin_app/domain/entities/fund_transaction.dart';
import 'package:admin_app/domain/ports/fund_transaction_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class FetchSalesPersonFundsWithShop {
  final IFundTransactionRepo _fundTransactionRepo;

  FetchSalesPersonFundsWithShop(this._fundTransactionRepo);

  Future<Either<Failure, List<FundTransaction>>> execute(
      String salesPersonId, String shopId) async {
    return _fundTransactionRepo.fetchFundTransactions(salesPersonId, shopId);
  }
}
