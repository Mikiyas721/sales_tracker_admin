import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import '../../common/id_dto.dart';
import '../../domain/entities/fund_transaction.dart';
import '../../domain/value_objects/card_amount.dart';
import '../dto/sales_person_dto.dart';
import '../dto/shop_dto.dart';

part 'fund_transaction_dto.g.dart';

@JsonSerializable(nullable: false)
class FundTransactionDto extends IdDto implements TimeStampedDto {
  final String id;
  final String salesPersonId;
  final String shopId;

  @JsonKey(nullable: true, includeIfNull: false) final ShopDto shop;
  @JsonKey(nullable: true, includeIfNull: false) final SalesPersonDto salesPerson;

  final double amount; /// why not use cash amount?
  @JsonKey(nullable: true, includeIfNull: false) final DateTime createdAt;
  @JsonKey(nullable: true, includeIfNull: false) final DateTime updatedAt;

  FundTransactionDto({
    @required this.id,
    @required this.salesPersonId,
    @required this.shopId,
    @required this.amount,
    @required this.createdAt,///why required if it can be null??
    @required this.updatedAt,
    this.shop,
    this.salesPerson,
  });

  factory FundTransactionDto.fromJson(Map<String, dynamic> json) => _$FundTransactionDtoFromJson(json);

  Map<String, dynamic> toJson() => _$FundTransactionDtoToJson(this);

  Option<FundTransaction> toDomain() {
    return FundTransaction.create(
      id: id,
      salesPersonId: salesPersonId,
      shopId: shopId,
      shop: shop?.toDomain() ?? none(),
      salesPerson: salesPerson?.toDomain() ?? none(),
      amount: amount,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  static FundTransactionDto fromDomain(FundTransaction fundTransaction) {
    return FundTransactionDto(
      id: fundTransaction.id,
      salesPersonId: fundTransaction.salesPersonId,
      shopId: fundTransaction.shopId,
      amount: fundTransaction.amount.value,
      createdAt: fundTransaction.createdAt,
      updatedAt: fundTransaction.updatedAt,
    );
  }
}
