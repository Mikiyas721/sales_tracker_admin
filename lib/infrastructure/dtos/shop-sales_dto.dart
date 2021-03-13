import 'package:admin_app/common/id_dto.dart';
import 'package:admin_app/domain/entities/shop-sales.dart';
import 'package:admin_app/infrastructure/dtos/sales_person_dto.dart';
import 'package:admin_app/infrastructure/dtos/shop_dto.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shop-sales_dto.g.dart';

@JsonSerializable(nullable: false)
class ShopSalesDto extends IdDto<ShopSales> implements TimeStampedDto {
  final String id;
  final String salesPersonId;
  final String shopId;
  @JsonKey(nullable: true, includeIfNull: false)
  final DateTime createdAt;
  @JsonKey(nullable: true, includeIfNull: false)
  final DateTime updatedAt;
  @JsonKey(nullable: true, includeIfNull: false)
  final ShopDto shop;
  @JsonKey(nullable: true, includeIfNull: false)
  final SalespersonDto salesPerson;

  ShopSalesDto(
      {this.id,
      this.salesPersonId,
      this.shopId,
      this.createdAt,
      this.updatedAt,
      this.shop,
      this.salesPerson});

  factory ShopSalesDto.fromJson(Map<String, dynamic> json) =>
      _$ShopSalesDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ShopSalesDtoToJson(this);

  @override
  Option<ShopSales> toDomain() {
    return ShopSales.create(
        id: id,
        salesPersonId: salesPersonId,
        shopId: shopId,
        updatedAt: updatedAt,
        createdAt: createdAt,
        shop: shop?.toDomain(),
        salesperson: salesPerson?.toDomain());
  }

  static ShopSalesDto fromDomain(ShopSales shopSales) {
    return ShopSalesDto(
      id: shopSales.id,
      salesPersonId: shopSales.salesPersonId,
      shopId: shopSales.shopId,
      createdAt: shopSales.createdAt,
      updatedAt: shopSales.updatedAt
    );
  }
}
