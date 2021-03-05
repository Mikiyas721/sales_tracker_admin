import 'package:admin_app/common/failure.dart';
import 'package:admin_app/domain/entities/card_transaction.dart';
import 'package:admin_app/domain/entities/cash_transaction.dart';
import 'package:admin_app/domain/ports/card_transaction_repo.dart';
import 'package:admin_app/domain/ports/cash_transaction_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class FetchSalespersonThisMonthCard {
  final ICardTransactionRepo _iCardTransactionRepo;

  FetchSalespersonThisMonthCard(this._iCardTransactionRepo);

  Future<Either<Failure, List<CardTransaction>>> execute(String salespersonId) {
    return _iCardTransactionRepo.fetchSoldThisMonth(salespersonId: salespersonId);
  }
}

@lazySingleton
class FetchSalespersonThisMonthCash {
  final ICashTransactionRepo _iCashTransactionRepo;

  FetchSalespersonThisMonthCash(this._iCashTransactionRepo);

  Future<Either<Failure, List<CashTransaction>>> execute(String salespersonId) {
    return _iCashTransactionRepo.fetchFundedThisMonth(salespersonId: salespersonId);
  }
}