import 'package:admin_app/common/data_source/crud_datasource/crud_datasource.dart';
import 'package:admin_app/common/data_source/crud_datasource/rest_crud_datasource.dart';
import 'package:admin_app/common/data_source/rest_datasource/rest_datasource.dart';
import 'package:admin_app/common/data_source/rest_datasource/rest_request.dart';
import 'package:admin_app/common/data_source/rest_datasource/rest_response.dart';
import 'package:admin_app/infrastructure/dtos/user_dto.dart';

abstract class AdminCrudDataSource
    extends CrudDataSource<UserDto, RestResponseFailure> {
  Future<RestResponseWithFailure> logIn(String idToken);

}

class AdminLoopbackDataSource extends LoopbackRestCrudDataSource<UserDto>
    implements AdminCrudDataSource {
  AdminLoopbackDataSource(RestDataSource restDataSource)
      : super(
          '/admins',
          restDataSource,
          (object) => object.toJson(),
          (map) => UserDto.fromJson(map),
        );
  
  Future<RestResponseWithFailure> logIn(String idToken) async {
    return restDataSource.post(RestRequest(
      url: '$path/login',
      data: {
        "idToken": "$idToken"
      },
    ));
  }
}
