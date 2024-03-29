import 'package:admin_app/common/id_dto.dart';
import 'package:admin_app/domain/entities/user.dart';
import 'package:admin_app/domain/value_objects/name.dart';
import 'package:admin_app/domain/value_objects/phone_number.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_dto.g.dart';

@JsonSerializable(nullable: false)
class UserDto extends IdDto<User> {
  @JsonKey(nullable: true, includeIfNull: false)
  final String id;
  final String name;
  final String phoneNumber;
  @JsonKey(nullable: true, includeIfNull: false)
  final String token;
  final String roleId;

  UserDto({
    @required this.id,
    @required this.name,
    @required this.phoneNumber,
    @required this.token,
    @required this.roleId,
  });

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);

  Map<String, dynamic> toJson() => _$UserDtoToJson(this);

  @override
  Option<User> toDomain() {
    return User.create(
      id: id,
      name: Name.create(name).getOrElse(() => null),
      phoneNumber: PhoneNumber.create(phoneNumber).getOrElse(() => null),
      token: token,
      roleId: roleId,
    );
  }

  static UserDto fromDomain(User user) {
    return UserDto(
      id: user.id,
      name: user.name.value,
      phoneNumber: user.phoneNumber.value,
      token: user.token,
      roleId: user.roleId,
    );
  }
}
