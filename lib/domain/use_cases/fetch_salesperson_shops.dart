import 'package:admin_app/common/failure.dart';
import 'package:admin_app/domain/entities/shop-sales.dart';
import 'package:admin_app/domain/entities/shop.dart';
import 'package:admin_app/domain/ports/shop-sales_repo.dart';
import 'package:admin_app/domain/ports/shop_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class FetchSalespersonShops {
  final IShopSalesRepo _iShopSalesRepo;

  FetchSalespersonShops(this._iShopSalesRepo);

  Future<Either<Failure, List<Shop>>> execute(String salesPersonId) async {
    final shopSales =
        await _iShopSalesRepo.fetchSalespersonShops(salesPersonId);
    return shopSales.fold(
        (l) => left(l),
        (r) =>
            right(r.map<Shop>((e) => e.shop.getOrElse(() => null)).toList()));
  }
}
