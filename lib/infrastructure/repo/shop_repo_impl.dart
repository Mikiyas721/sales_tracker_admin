import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../common/failure.dart';
import '../../domain/entities/shop.dart';
import '../../domain/ports/shop_repo.dart';
import '../../infrastructure/data_sources/shop_data_source.dart';

@LazySingleton(as: IShopRepo)
class ShopRepoImpl extends IShopRepo {
  final ShopCrudDataSource shopCrudDataSource;

  ShopRepoImpl(this.shopCrudDataSource);

  @override
  Future<Either<Failure, List<Shop>>> fetchSalesPersonShops(String salesPersonId) {
    // TODO: implement fetchSalesPersonShops
    throw UnimplementedError();
  }
}
