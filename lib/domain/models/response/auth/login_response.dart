import 'dart:ffi';

import 'package:json_annotation/json_annotation.dart';

part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  @JsonKey(name: 'user_info')
  final ProfileResponse profile;
  final String token;
  // final List<dynamic> permissions;

  const LoginResponse({
    required this.profile,
    required this.token,
    // required this.permissions,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);
}

@JsonSerializable()
class ProfileResponse {
  final double id;
  final String username;
  @JsonKey(name: 'full_name')
  final String fullName;
  final String email;
  final dynamic birthday;
  final dynamic gender;

  const ProfileResponse({
    this.id = 0,
    this.username = '',
    this.fullName = '',
    this.email = '',
    this.birthday = '',
    this.gender = '',
  });

  factory ProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfileResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileResponseToJson(this);
}
