import 'package:admin_app/common/failure.dart';
import 'package:admin_app/domain/entities/card_transaction.dart';
import 'package:admin_app/domain/entities/cash_transaction.dart';
import 'package:admin_app/domain/ports/card_transaction_repo.dart';
import 'package:admin_app/domain/ports/cash_transaction_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';


@lazySingleton
class FetchSalespersonThisWeekCard {
  final ICardTransactionRepo _iCardTransactionsRepo;

  FetchSalespersonThisWeekCard(this._iCardTransactionsRepo);

  Future<Either<Failure, List<CardTransaction>>> execute(String salesperson) {
    return _iCardTransactionsRepo.fetchSoldThisWeek(salespersonId: salesperson);
  }
}

@lazySingleton
class FetchSalespersonThisWeekCash {
  final ICashTransactionRepo _iCashTransactionsRepo;

  FetchSalespersonThisWeekCash(this._iCashTransactionsRepo);

  Future<Either<Failure, List<CashTransaction>>> execute(String salespersonId) {
    return _iCashTransactionsRepo.fetchFundedThisWeek(salespersonId: salespersonId);
  }
}