import 'package:admin_app/common/failure.dart';
import 'package:admin_app/domain/entities/shop.dart';
import 'package:admin_app/domain/ports/shop_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class FetchSalesPersonShops {
  final IShopRepo _iShopRepo;

  FetchSalesPersonShops(this._iShopRepo);

  Future<Either<Failure, List<Shop>>> execute(String salesPersonId) async {
    return _iShopRepo.fetchSalesPersonShops(salesPersonId);
  }
}
