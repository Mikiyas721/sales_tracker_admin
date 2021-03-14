import 'package:admin_app/common/failure.dart';
import 'package:admin_app/common/id_dto.dart';
import 'package:admin_app/domain/entities/shop-sales.dart';
import 'package:admin_app/domain/ports/shop-sales_repo.dart';
import 'package:admin_app/infrastructure/data_sources/shop-sales_datasource.dart';
import 'package:admin_app/infrastructure/dtos/shop-sales_dto.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IShopSalesRepo)
class ShopSalesRepoImpl extends IShopSalesRepo {
  final ShopSalesCrudDataSource shopSalesCrudDataSource;

  ShopSalesRepoImpl(this.shopSalesCrudDataSource);


  Future<Either<Failure, List<ShopSales>>> fetchSalespersonShops(
      String salespersonId) async {
    final shopSalesResults = await shopSalesCrudDataSource.find(options: {
      "filter": {
        "order": "createdAt DESC",
        "include": {"relation": "shop"},
        "where": {
          "salesPersonId": {"eq": "$salespersonId"}
        }
      },
    });
    return shopSalesResults.either.fold((l) => left(l), (r) {
      return right(IdDto.toDomainList<ShopSales, ShopSalesDto>(r));
    });
  }
}
