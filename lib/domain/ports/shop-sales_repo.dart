import 'package:admin_app/common/failure.dart';
import 'package:admin_app/domain/entities/shop-sales.dart';
import 'package:dartz/dartz.dart';

abstract class IShopSalesRepo {
  Future<Either<Failure, List<ShopSales>>> fetchSalespersonShops(String salespersonId);
}