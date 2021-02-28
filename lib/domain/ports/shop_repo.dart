import 'package:dartz/dartz.dart';
import '../../common/failure.dart';
import '../../domain/entities/shop.dart';

abstract class IShopRepo{
  Future<Either<Failure,List<Shop>>> fetchSalesPersonShops(String salesPersonId);
  Future<Either<Failure, List<Shop>>> fetchNewShops();
}