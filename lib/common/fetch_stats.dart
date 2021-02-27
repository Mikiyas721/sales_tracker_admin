import 'package:admin_app/domain/entities/sell_transaction.dart';
import 'package:admin_app/domain/ports/fund_transaction_repo.dart';
import 'package:admin_app/domain/ports/sale_transaction_repo.dart';
import 'package:admin_app/domain/value_objects/stats.dart';
import 'package:dartz/dartz.dart';

import 'failure.dart';

abstract class FetchStats {
  final IFundTransactionRepo _iFundTransactionRepo;
  final ISaleTransactionRepo _iSaleTransactionRepo;

  FetchStats(this._iFundTransactionRepo, this._iSaleTransactionRepo);

  Future<Either<Failure, Stats>> fetch(Function(List<SaleTransaction>) getDetailed, {String salesPersonId}) async {
    final salesResult = await _iSaleTransactionRepo.fetchSoldToday(salesPersonId: salesPersonId);
    return salesResult.fold((l) => left(l), (sales) async {
      final fundResult = await _iFundTransactionRepo.fetchFundedToday(salesPersonId: salesPersonId);
      return fundResult.fold((l) => left(l), (funds) {
        double totalSold = 0;
        double totalFunds = 0;
        double totalLoans = 0;
        funds.forEach((e) {
          totalFunds += e.amount.value;
        });
        sales.forEach((e) {
          totalSold += e.soldAmount.value;
          totalLoans += e.soldAmount.value - e.receivedAmount.value;
        });
        return Stats.create(
            detailedData: getDetailed(sales),
            totalFundedAmount: totalFunds,
            totalLoanedAmount: totalLoans,
            totalSoldAmount: totalSold);
      });
    });
  }
}