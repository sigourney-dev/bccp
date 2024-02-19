import 'package:json_annotation/json_annotation.dart';

part 'user_response.g.dart';

@JsonSerializable()
class UserResponse {
  final String email;
  final String username;
  @JsonKey(name: "full_name")
  final String fullName;
  final bool gender;
  final bool active;
  final String phone;

  bool get isRegistered => email.isNotEmpty && username.isNotEmpty;

  const UserResponse({
    this.email = "",
    this.username = "",
    this.fullName = "",
    this.gender = false,
    this.active = false,
    this.phone = "",
  });

  factory UserResponse.fromJson(Map<String, dynamic> json) =>
      _$UserResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UserResponseToJson(this);
}
