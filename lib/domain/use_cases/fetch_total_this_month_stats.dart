import 'package:admin_app/common/failure.dart';
import 'package:admin_app/domain/entities/card_transaction.dart';
import 'package:admin_app/domain/entities/cash_transaction.dart';
import 'package:admin_app/domain/ports/card_transaction_repo.dart';
import 'package:admin_app/domain/ports/cash_transaction_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class FetchTotalThisMonthCard {
  final ICardTransactionRepo _iCardTransactionRepo;

  FetchTotalThisMonthCard(this._iCardTransactionRepo);

  Future<Either<Failure, List<CardTransaction>>> execute() {
    return _iCardTransactionRepo.fetchSoldThisMonth();
  }
}

@lazySingleton
class FetchTotalThisMonthCash {
  final ICashTransactionRepo _iCashTransactionRepo;

  FetchTotalThisMonthCash(this._iCashTransactionRepo);

  Future<Either<Failure, List<CashTransaction>>> execute() {
    return _iCashTransactionRepo.fetchFundedThisMonth();
  }
}