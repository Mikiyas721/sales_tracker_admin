import 'package:admin_app/common/failure.dart';
import 'package:admin_app/common/fetch_stats.dart';
import 'package:admin_app/domain/entities/sell_transaction.dart';
import 'package:admin_app/domain/value_objects/stats.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class FetchSalespersonThisMonthStats extends FetchStats {
  FetchSalespersonThisMonthStats(iFundTransactionRepo, iSaleTransactionRepo)
      : super(iFundTransactionRepo, iSaleTransactionRepo);

  Future<Either<Failure, Stats>> execute(String salesPersonId) async {
    return super.fetch(getDetailed, salesPersonId: salesPersonId);
  }

  List<Detail> getDetailed(List<SaleTransaction> sales) {
    List<Detail> details = [];
    details.add(Detail(getSold(sales, 7), getLoaned(sales, 7), '1'));
    details.add(Detail(getSold(sales, 14), getLoaned(sales, 14), '2'));
    details.add(Detail(getSold(sales, 21), getLoaned(sales, 21), '3'));
    details.add(Detail(getSold(sales, 31), getLoaned(sales, 31), '4'));
    return details;
  }

  double getSold(List<SaleTransaction> sales, int day) {
    double sold = 0;
    sales.forEach((element) {
      if (element.createdAt.day < day) sold += element.soldAmount.value;
    });
    return sold;
  }

  double getLoaned(List<SaleTransaction> sales, int day) {
    double loaned = 0;
    sales.forEach((element) {
      if (element.createdAt.day == day)
        loaned += element.soldAmount.value - element.receivedAmount.value;
    });
    return loaned;
  }
}
