import 'package:admin_app/infrastructure/data_sources/sale_transaction_data_source.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../common/failure.dart';
import '../../domain/entities/sell_transaction.dart';
import '../../domain/ports/sale_transaction_repo.dart';
import '../../infrastructure/dto/sale_transaction_dto.dart';

@LazySingleton(as: ISaleTransactionRepo)
class SaleTransactionRepoImpl extends ISaleTransactionRepo {
  final SaleTransactionCrudDataSource saleTransactionCrudDataSource;

  SaleTransactionRepoImpl(this.saleTransactionCrudDataSource);

  @override
  Future<Either<Failure, List<SaleTransaction>>> fetchSaleTransactions(String salesPersonId, String shopId) {
    // TODO: implement fetchSaleTransactions
    throw UnimplementedError();
  }

}
