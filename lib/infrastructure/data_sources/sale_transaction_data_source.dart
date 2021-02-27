import 'package:injectable/injectable.dart';
import '../../common/data_source/crud_datasource/crud_datasource.dart';
import '../../common/data_source/crud_datasource/rest_crud_datasource.dart';
import '../../common/data_source/rest_datasource/rest_datasource.dart';
import '../../common/data_source/rest_datasource/rest_response.dart';
import '../../infrastructure/dto/sale_transaction_dto.dart';

abstract class SaleTransactionCrudDataSource
    extends CrudDataSource<SaleTransactionDto, RestResponseFailure> {}


@LazySingleton(as:  SaleTransactionCrudDataSource)
class SaleTransactionLoopbackDataSource
    extends LoopbackRestCrudDataSource<SaleTransactionDto>
    implements SaleTransactionCrudDataSource {
  SaleTransactionLoopbackDataSource(
    RestDataSource restDataSource,
  ) : super(
            '/saleTransactions',
            restDataSource,
            (saleTransaction) => saleTransaction.toJson(),
            (map) => SaleTransactionDto.fromJson(map));
}
