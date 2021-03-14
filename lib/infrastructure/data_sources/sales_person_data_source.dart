import 'package:admin_app/common/data_source/crud_datasource/crud_datasource.dart';
import 'package:admin_app/common/data_source/crud_datasource/rest_crud_datasource.dart';
import 'package:admin_app/common/data_source/rest_datasource/rest_datasource.dart';
import 'package:admin_app/common/data_source/rest_datasource/rest_request.dart';
import 'package:admin_app/common/data_source/rest_datasource/rest_response.dart';
import 'package:admin_app/common/failure.dart';
import 'package:admin_app/domain/entities/salesperson.dart';
import 'package:admin_app/infrastructure/dtos/sales_person_dto.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

abstract class SalesPersonCrudDataSource
    extends CrudDataSource<SalespersonDto, RestResponseFailure> {
  Future<RestResponseWithFailure> getOwingPeople();
}

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

  Future<RestResponseWithFailure> getOwingPeople() async{
    return restDataSource.post(RestRequest(url: '$path/getOwingSalespeople'));
  }
}
