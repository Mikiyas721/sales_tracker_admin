import 'package:admin_app/common/failure.dart';
import 'package:admin_app/domain/entities/card_transaction.dart';
import 'package:admin_app/domain/ports/card_transaction_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class FetchLoans {
  final ICardTransactionRepo _iSaleTransactionRepo;

  FetchLoans(this._iSaleTransactionRepo);

  Future<Either<Failure, List<CardTransaction>>> execute() async {
    return _iSaleTransactionRepo.fetchLoans();
  }
}
