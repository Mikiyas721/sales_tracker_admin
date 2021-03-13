import 'package:injectable/injectable.dart';
import '../../common/data_source/crud_datasource/crud_datasource.dart';
import '../../common/data_source/crud_datasource/rest_crud_datasource.dart';
import '../../common/data_source/rest_datasource/rest_datasource.dart';
import '../../common/data_source/rest_datasource/rest_response.dart';
import '../../infrastructure/dtos/card_transaction_dto.dart';

abstract class CardTransactionCrudDataSource
    extends CrudDataSource<CardTransactionDto, RestResponseFailure> {}


@LazySingleton(as:  CardTransactionCrudDataSource)
class CardTransactionLoopbackDataSource
    extends LoopbackRestCrudDataSource<CardTransactionDto>
    implements CardTransactionCrudDataSource {
  CardTransactionLoopbackDataSource(
    RestDataSource restDataSource,
  ) : super(
            '/cardTransactions',
            restDataSource,
            (saleTransaction) => saleTransaction.toJson(),
            (map) => CardTransactionDto.fromJson(map));
}
