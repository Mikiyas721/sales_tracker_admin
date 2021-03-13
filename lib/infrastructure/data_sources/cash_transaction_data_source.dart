import 'package:injectable/injectable.dart';
import '../../common/data_source/crud_datasource/crud_datasource.dart';
import '../../common/data_source/crud_datasource/rest_crud_datasource.dart';
import '../../common/data_source/rest_datasource/rest_datasource.dart';
import '../../common/data_source/rest_datasource/rest_response.dart';
import '../../infrastructure/dtos/cash_transaction_dto.dart';

abstract class CashTransactionCrudDataSource
    implements CrudDataSource<CashTransactionDto, RestResponseFailure> {}

@LazySingleton(as: CashTransactionCrudDataSource)
class CashTransactionLoopbackDataSource
    extends LoopbackRestCrudDataSource<CashTransactionDto>
    implements CashTransactionCrudDataSource {
  CashTransactionLoopbackDataSource(RestDataSource restDataSource)
      : super(
          '/cashTransactions',
          restDataSource,
          (fundTransaction) => fundTransaction.toJson(),
          (map) => CashTransactionDto.fromJson(map),
        );
}
