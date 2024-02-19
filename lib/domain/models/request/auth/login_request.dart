import 'package:json_annotation/json_annotation.dart';

part 'login_request.g.dart';

@JsonSerializable()
class LoginRequest {
  final String username;
  final String password;
  @JsonKey(name: 'with_permissions')
  final bool withPermissions;

  const LoginRequest({
    required this.username,
    required this.password,
    this.withPermissions = true,
  });

  factory LoginRequest.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestFromJson(json);

  Map<String, dynamic> toJson() => _$LoginRequestToJson(this);
}
