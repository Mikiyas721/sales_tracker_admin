import 'package:admin_app/common/failure.dart';
import 'package:admin_app/domain/entities/shop.dart';
import 'package:admin_app/domain/ports/shop_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class FetchNewShops {
  final IShopRepo _iShopRepo;

  FetchNewShops(this._iShopRepo);

  Future<Either<Failure, List<Shop>>> execute() async {
    return _iShopRepo.fetchNewShops();
  }
}
