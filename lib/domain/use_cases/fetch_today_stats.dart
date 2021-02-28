import 'package:admin_app/common/failure.dart';
import 'package:admin_app/common/fetch_stats.dart';
import 'package:admin_app/domain/entities/sell_transaction.dart';
import 'package:admin_app/domain/value_objects/stats.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class FetchTodayStats extends FetchStats {
  FetchTodayStats(iFundTransactionRepo, iSaleTransactionRepo)
      : super(iFundTransactionRepo, iSaleTransactionRepo);

  Future<Either<Failure, Stats>> execute() async {
    return super.fetch(getDetailed);
  }

  List<Detail> getDetailed(List<SaleTransaction> sales) {
    List<Detail> details = [];
    details.add(Detail(getSold(sales, 9), getLoaned(sales, 9), '9'));
    details.add(Detail(getSold(sales, 10), getLoaned(sales, 10), '10'));
    details.add(Detail(getSold(sales, 11), getLoaned(sales, 11), '11'));
    details.add(Detail(getSold(sales, 12), getLoaned(sales, 12), '12'));
    details.add(Detail(getSold(sales, 13), getLoaned(sales, 13), '1'));
    details.add(Detail(getSold(sales, 14), getLoaned(sales, 14), '2'));
    details.add(Detail(getSold(sales, 15), getLoaned(sales, 15), '3'));
    details.add(Detail(getSold(sales, 16), getLoaned(sales, 16), '4'));
    details.add(Detail(getSold(sales, 17), getLoaned(sales, 17), '5'));
    return details;
  }

  double getSold(List<SaleTransaction> sales, int hour) {
    double sold = 0;
    sales.forEach((element) {
      if (element.createdAt.isBefore(DateTime(
          element.createdAt.year,
          element.createdAt.month,
          element.createdAt.day,
          hour))) sold += element.soldAmount.value;
    });
    return sold;
  }

  double getLoaned(List<SaleTransaction> sales, int hour) {
    double loaned = 0;
    sales.forEach((element) {
      if (element.createdAt.isBefore(DateTime(element.createdAt.year,
          element.createdAt.month, element.createdAt.day, hour)))
        loaned += element.soldAmount.value - element.receivedAmount.value;
    });
    return loaned;
  }
}
