// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_person_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SalespersonDto _$SalespersonDtoFromJson(Map<String, dynamic> json) {
  return SalespersonDto(
    id: json['id'] as String,
    name: json['name'] as String,
    phoneNumber: json['phoneNumber'] as String,
    updatedAt: json['updatedAt'] == null
        ? null
        : DateTime.parse(json['updatedAt'] as String),
    createdAt: json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String),
    balance: (json['balance'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$SalespersonDtoToJson(SalespersonDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['name'] = instance.name;
  val['phoneNumber'] = instance.phoneNumber;
  writeNotNull('balance', instance.balance);
  writeNotNull('createdAt', instance.createdAt?.toIso8601String());
  writeNotNull('updatedAt', instance.updatedAt?.toIso8601String());
  return val;
}
