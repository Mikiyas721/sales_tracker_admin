import 'package:admin_app/common/failure.dart';
import 'package:admin_app/domain/entities/sell_transaction.dart';
import 'package:admin_app/domain/ports/sale_transaction_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class FetchLoans {
  final ISaleTransactionRepo _iSaleTransactionRepo;

  FetchLoans(this._iSaleTransactionRepo);

  Future<Either<Failure, List<SaleTransaction>>> execute() async {
    return _iSaleTransactionRepo.fetchLoans();
  }
}
