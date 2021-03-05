import 'package:admin_app/common/failure.dart';
import 'package:admin_app/domain/entities/card_transaction.dart';
import 'package:admin_app/domain/entities/cash_transaction.dart';
import 'package:admin_app/domain/ports/card_transaction_repo.dart';
import 'package:admin_app/domain/ports/cash_transaction_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';


@lazySingleton
class FetchSalespersonTodayCard {
  final ICardTransactionRepo _iCardTransactionsRepo;

  FetchSalespersonTodayCard(this._iCardTransactionsRepo);

  Future<Either<Failure, List<CardTransaction>>> execute(String salespersonId) {
    return _iCardTransactionsRepo.fetchSoldToday(salespersonId: salespersonId);
  }
}

@lazySingleton
class FetchSalespersonTodayCash {
  final ICashTransactionRepo _iCashTransactionsRepo;

  FetchSalespersonTodayCash(this._iCashTransactionsRepo);

  Future<Either<Failure, List<CashTransaction>>> execute(String salespersonId) {
    return _iCashTransactionsRepo.fetchFundedToday(salespersonId: salespersonId);
  }
}