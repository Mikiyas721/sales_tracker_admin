// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fund_transaction_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FundTransactionDto _$FundTransactionDtoFromJson(Map<String, dynamic> json) {
  return FundTransactionDto(
    id: json['id'] as String,
    salesPersonId: json['salesPersonId'] as String,
    shopId: json['shopId'] as String,
    amount: (json['amount'] as num).toDouble(),
    createdAt: json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String),
    updatedAt: json['updatedAt'] == null
        ? null
        : DateTime.parse(json['updatedAt'] as String),
    shop: json['shop'] == null
        ? null
        : ShopDto.fromJson(json['shop'] as Map<String, dynamic>),
    salesPerson: json['salesPerson'] == null
        ? null
        : SalespersonDto.fromJson(json['salesPerson'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$FundTransactionDtoToJson(FundTransactionDto instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'salesPersonId': instance.salesPersonId,
    'shopId': instance.shopId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('shop', instance.shop);
  writeNotNull('salesPerson', instance.salesPerson);
  val['amount'] = instance.amount;
  writeNotNull('createdAt', instance.createdAt?.toIso8601String());
  writeNotNull('updatedAt', instance.updatedAt?.toIso8601String());
  return val;
}
