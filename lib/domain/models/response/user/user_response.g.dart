// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserResponse _$UserResponseFromJson(Map<String, dynamic> json) => UserResponse(
      email: json['email'] as String? ?? "",
      username: json['username'] as String? ?? "",
      fullName: json['full_name'] as String? ?? "",
      gender: json['gender'] as bool? ?? false,
      active: json['active'] as bool? ?? false,
      phone: json['phone'] as String? ?? "",
    );

Map<String, dynamic> _$UserResponseToJson(UserResponse instance) =>
    <String, dynamic>{
      'email': instance.email,
      'username': instance.username,
      'full_name': instance.fullName,
      'gender': instance.gender,
      'active': instance.active,
      'phone': instance.phone,
    };
