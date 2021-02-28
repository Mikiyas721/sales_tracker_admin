// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_person_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SalespersonDto _$SalesPersonDtoFromJson(Map<String, dynamic> json) {
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
    shops: (json['shops'] as List).map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$SalesPersonDtoToJson(SalespersonDto instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'name': instance.name,
    'phoneNumber': instance.phoneNumber,
    'shops': instance.shops,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createdAt', instance.createdAt?.toIso8601String());
  writeNotNull('updatedAt', instance.updatedAt?.toIso8601String());
  return val;
}
