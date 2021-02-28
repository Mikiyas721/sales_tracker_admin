import 'package:admin_app/common/failure.dart';
import 'package:admin_app/common/fetch_stats.dart';
import 'package:admin_app/domain/entities/sell_transaction.dart';
import 'package:admin_app/domain/value_objects/stats.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class FetchSalespersonThisWeekStats extends FetchStats {
  FetchSalespersonThisWeekStats(iFundTransactionRepo, iSaleTransactionRepo)
      : super(iFundTransactionRepo, iSaleTransactionRepo);

  Future<Either<Failure, Stats>> execute(String salesPersonId) async {
    return super.fetch(getDetailed, salesPersonId: salesPersonId);
  }

  List<Detail> getDetailed(List<SaleTransaction> sales) {
    List<Detail> details = [];
    details.add(Detail(getSold(sales, 1), getLoaned(sales, 1), 'M'));
    details.add(Detail(getSold(sales, 2), getLoaned(sales, 2), 'T'));
    details.add(Detail(getSold(sales, 3), getLoaned(sales, 3), 'W'));
    details.add(Detail(getSold(sales, 4), getLoaned(sales, 4), 'T'));
    details.add(Detail(getSold(sales, 5), getLoaned(sales, 5), 'F'));
    details.add(Detail(getSold(sales, 6), getLoaned(sales, 6), 'S'));
    details.add(Detail(getSold(sales, 7), getLoaned(sales, 7), 'S'));
    return details;
  }

  double getSold(List<SaleTransaction> sales, int dayOfWeek) {
    double sold = 0;
    sales.forEach((element) {
      if (element.createdAt.weekday == dayOfWeek)
        sold += element.soldAmount.value;
    });
    return sold;
  }

  double getLoaned(List<SaleTransaction> sales, int dayOfWeek) {
    double loaned = 0;
    sales.forEach((element) {
      if (element.createdAt.weekday == dayOfWeek)
        loaned += element.soldAmount.value - element.receivedAmount.value;
    });
    return loaned;
  }
}
