import 'package:admin_app/common/data_source/crud_datasource/crud_datasource.dart';
import 'package:admin_app/common/data_source/crud_datasource/rest_crud_datasource.dart';
import 'package:admin_app/common/data_source/rest_datasource/rest_datasource.dart';
import 'package:admin_app/common/data_source/rest_datasource/rest_response.dart';
import 'package:admin_app/infrastructure/dtos/shop_dto.dart';
import 'package:injectable/injectable.dart';

abstract class ShopCrudDataSource
    extends CrudDataSource<ShopDto, RestResponseFailure> {}

@LazySingleton(as: ShopCrudDataSource)
class ShopLoopbackDataSource extends LoopbackRestCrudDataSource<ShopDto>
    implements ShopCrudDataSource {
  ShopLoopbackDataSource(RestDataSource restDataSource)
      : super(
          '/shops',
          restDataSource,
          (shop) => shop.toJson(),
          (map) => ShopDto.fromJson(map),
        );
}
