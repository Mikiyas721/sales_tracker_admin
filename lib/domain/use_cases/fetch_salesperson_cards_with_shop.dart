import 'package:admin_app/common/failure.dart';
import 'package:admin_app/domain/entities/card_transaction.dart';
import 'package:admin_app/domain/ports/card_transaction_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class FetchSalespersonCardsWithShop {
  final ICardTransactionRepo _iSaleTransactionRepo;

  FetchSalespersonCardsWithShop(this._iSaleTransactionRepo);

  Future<Either<Failure, List<CardTransaction>>> execute(
      String salesPersonId, String shopId) async {
    return _iSaleTransactionRepo.fetchSaleTransactions(salesPersonId, shopId);
  }
}
