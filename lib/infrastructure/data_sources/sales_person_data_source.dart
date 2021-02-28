import 'package:admin_app/common/data_source/crud_datasource/crud_datasource.dart';
import 'package:admin_app/common/data_source/crud_datasource/rest_crud_datasource.dart';
import 'package:admin_app/common/data_source/rest_datasource/rest_datasource.dart';
import 'package:admin_app/common/data_source/rest_datasource/rest_response.dart';
import 'package:admin_app/infrastructure/dto/sales_person_dto.dart';
import 'package:injectable/injectable.dart';

abstract class SalesPersonCrudDataSource
    extends CrudDataSource<SalespersonDto, RestResponseFailure> {}

@LazySingleton(as: SalesPersonCrudDataSource)
class SalesPersonLoopbackDataSource
    extends LoopbackRestCrudDataSource<SalespersonDto>
    implements SalesPersonCrudDataSource {
  SalesPersonLoopbackDataSource(RestDataSource restDataSource)
      : super(
          '/salesPeople',
          restDataSource,
          (salesPerson) => salesPerson.toJson(),
          (map) => SalespersonDto.fromJson(map),
        );
}
