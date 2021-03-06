import 'package:admin_app/common/id_dto.dart';
import 'package:admin_app/infrastructure/dto/shop_dto.dart';
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
  Future<Either<Failure, List<Shop>>> fetchSalesPersonShops(
      String salesPersonId) async {
    final result = await shopCrudDataSource.find(options: {
      "filter": {
        "where": {
          {"salesPersonId": "$salesPersonId"}
        }
      }
    });
    return result.either.fold(
        (l) => left(l),
        (r) =>
            right(IdDto.toDomainList<Shop, ShopDto>(r)));
  }

  @override
  Future<Either<Failure, List<Shop>>> fetchNewShops() async{
    final result = await shopCrudDataSource.find(options: {
      "filter": {
        "where": {
          "createdAt": {
            "gt": "${DateTime.now().subtract(Duration(days: 7)).toString()}"
          }
        }
      }
    });
    return result.either.fold(
            (l) => left(l),
            (r) =>
            right(IdDto.toDomainList<Shop, ShopDto>(r)));
  }
}
