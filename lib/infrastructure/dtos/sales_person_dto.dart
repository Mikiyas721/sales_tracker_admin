import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import '../../common/id_dto.dart';
import '../../domain/entities/salesperson.dart';

part 'sales_person_dto.g.dart';

@JsonSerializable(nullable: false)
class SalespersonDto extends IdDto<Salesperson> implements TimeStampedDto {
  @JsonKey(nullable: true, includeIfNull: false) final String id;
  final String name;
  final String phoneNumber;
  @JsonKey(nullable: true, includeIfNull: false) final double balance;
  @JsonKey(nullable: true, includeIfNull: false) final DateTime createdAt;
  @JsonKey(nullable: true, includeIfNull: false) final DateTime updatedAt;

  SalespersonDto({
    @required this.id,
    @required this.name,
    @required this.phoneNumber,
    @required this.updatedAt,
    @required this.createdAt,
    @required this.balance,
  });

  factory SalespersonDto.fromJson(Map<String, dynamic> json) =>
      _$SalespersonDtoFromJson(json);

  Map<String, dynamic> toJson() => _$SalespersonDtoToJson(this);

  @override
  Option<Salesperson> toDomain() {
    return Salesperson.create(
      id: id,
      name: name,
      phoneNumber: phoneNumber,
      createdAt: createdAt,
      updatedAt: updatedAt,
      balance: balance,
    );
  }
  static List<SalespersonDto> toDtoList(List dto) {
    return dto.map<SalespersonDto>((e)=>SalespersonDto.fromJson(e)).toList();
  }

  static SalespersonDto fromDomain(Salesperson salesPerson) {
    return SalespersonDto(
        id: salesPerson.id,
        name: salesPerson.name.value,
        phoneNumber: salesPerson.phoneNumber.value,
        createdAt: salesPerson.createdAt,
        updatedAt: salesPerson.updatedAt,
        balance: salesPerson.balance
    );
  }
}
