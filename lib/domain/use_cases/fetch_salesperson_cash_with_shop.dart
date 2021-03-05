import 'package:admin_app/common/failure.dart';
import 'package:admin_app/domain/entities/cash_transaction.dart';
import 'package:admin_app/domain/ports/cash_transaction_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class FetchSalespersonCashWithShop {
  final ICashTransactionRepo _fundTransactionRepo;

  FetchSalespersonCashWithShop(this._fundTransactionRepo);

  Future<Either<Failure, List<CashTransaction>>> execute(
      String salesPersonId, String shopId) async {
    return _fundTransactionRepo.fetchFundTransactions(salesPersonId, shopId);
  }
}
