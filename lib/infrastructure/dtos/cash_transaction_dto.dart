import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import '../../common/id_dto.dart';
import '../../domain/entities/cash_transaction.dart';
import '../dtos/sales_person_dto.dart';
import '../dtos/shop_dto.dart';

part 'cash_transaction_dto.g.dart';

@JsonSerializable(nullable: false)
class CashTransactionDto extends IdDto<CashTransaction>
    implements TimeStampedDto {
  final String id;
  final String salesPersonId;
  final String shopId;

  @JsonKey(nullable: true, includeIfNull: false)
  final ShopDto shop;
  @JsonKey(nullable: true, includeIfNull: false)
  final SalespersonDto salesPerson;

  final double amount;

  /// why not use cash amount?
  @JsonKey(nullable: true, includeIfNull: false)
  final DateTime createdAt;
  @JsonKey(nullable: true, includeIfNull: false)
  final DateTime updatedAt;

  CashTransactionDto({
    @required this.id,
    @required this.salesPersonId,
    @required this.shopId,
    @required this.amount,
    @required this.createdAt,

    ///why required if it can be null??
    @required this.updatedAt,
    this.shop,
    this.salesPerson,
  });

  factory CashTransactionDto.fromJson(Map<String, dynamic> json) =>
      _$CashTransactionDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CashTransactionDtoToJson(this);

  static CashTransactionDto fromDomain(CashTransaction fundTransaction) {
    return CashTransactionDto(
      id: fundTransaction.id,
      salesPersonId: fundTransaction.salesPersonId,
      shopId: fundTransaction.shopId,
      amount: fundTransaction.amount.value,
      createdAt: fundTransaction.createdAt,
      updatedAt: fundTransaction.updatedAt,
    );
  }

  @override
  Option<CashTransaction> toDomain() {
    return CashTransaction.create(
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
}
