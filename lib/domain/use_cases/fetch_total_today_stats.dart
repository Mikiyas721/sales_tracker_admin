import 'package:admin_app/common/failure.dart';
import 'package:admin_app/domain/entities/card_transaction.dart';
import 'package:admin_app/domain/entities/cash_transaction.dart';
import 'package:admin_app/domain/ports/card_transaction_repo.dart';
import 'package:admin_app/domain/ports/cash_transaction_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';


@lazySingleton
class FetchTotalTodayCard {
  final ICardTransactionRepo _iCardTransactionsRepo;

  FetchTotalTodayCard(this._iCardTransactionsRepo);

  Future<Either<Failure, List<CardTransaction>>> execute() {
    return _iCardTransactionsRepo.fetchSoldToday();
  }
}

@lazySingleton
class FetchTotalTodayCash {
  final ICashTransactionRepo _iCashTransactionsRepo;

  FetchTotalTodayCash(this._iCashTransactionsRepo);

  Future<Either<Failure, List<CashTransaction>>> execute() {
    return _iCashTransactionsRepo.fetchFundedToday();
  }
}