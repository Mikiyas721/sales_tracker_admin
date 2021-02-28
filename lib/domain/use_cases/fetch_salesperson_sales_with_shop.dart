import 'package:admin_app/common/failure.dart';
import 'package:admin_app/domain/entities/sell_transaction.dart';
import 'package:admin_app/domain/ports/sale_transaction_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class FetchSalespersonSalesWithShop {
  final ISaleTransactionRepo _iSaleTransactionRepo;

  FetchSalespersonSalesWithShop(this._iSaleTransactionRepo);

  Future<Either<Failure, List<SaleTransaction>>> execute(
      String salesPersonId, String shopId) async {
    return _iSaleTransactionRepo.fetchSaleTransactions(salesPersonId, shopId);
  }
}
