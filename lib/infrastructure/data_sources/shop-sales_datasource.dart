import 'package:admin_app/common/data_source/crud_datasource/crud_datasource.dart';
import 'package:admin_app/common/data_source/crud_datasource/rest_crud_datasource.dart';
import 'package:admin_app/common/data_source/rest_datasource/rest_datasource.dart';
import 'package:admin_app/common/data_source/rest_datasource/rest_response.dart';
import 'package:admin_app/infrastructure/dtos/shop-sales_dto.dart';
import 'package:injectable/injectable.dart';


abstract class ShopSalesCrudDataSource
    extends CrudDataSource<ShopSalesDto, RestResponseFailure> {}

@LazySingleton(as: ShopSalesCrudDataSource)
class ShopSalesLoopbackDataSource
    extends LoopbackRestCrudDataSource<ShopSalesDto>
    implements ShopSalesCrudDataSource {
  ShopSalesLoopbackDataSource(RestDataSource restDataSource)
      : super(
            '/shop-sales',
            restDataSource,
            (shopSales) => shopSales.toJson(),
            (map) => ShopSalesDto.fromJson(map));
}
