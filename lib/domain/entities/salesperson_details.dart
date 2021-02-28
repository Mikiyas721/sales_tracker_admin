import 'package:admin_app/common/entity.dart';
import 'package:admin_app/domain/entities/salesperson.dart';
import 'package:admin_app/domain/entities/shop.dart';
import 'package:dartz/dartz.dart';

class SalespersonDetails extends Entity {
  final Salesperson salesperson;
  final double totalLoan;
  final double totalSales;
  final List<Shop> totalShops;

  SalespersonDetails._(
      {this.salesperson, this.totalShops, this.totalSales, this.totalLoan});

  static Option<SalespersonDetails> create({
    Salesperson salesperson,
    double totalLoan,
    double totalSales,
    List<Shop> totalShops,
  }) {
    if ([
      salesperson,
      totalLoan,
      totalSales,
      totalShops,
    ].any((element) => element == null)) return none();
    return some(SalespersonDetails._(
        salesperson: salesperson,
        totalLoan: totalLoan,
        totalSales: totalSales,
        totalShops: totalShops));
  }
}
