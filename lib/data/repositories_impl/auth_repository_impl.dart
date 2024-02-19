import 'dart:convert';

import 'package:bccp/application/extensions/object_extensions.dart';
import 'package:bccp/data/data_sources/storages/shared_preferences.dart';
import 'package:bccp/domain/models/response/auth/login_response.dart';
import 'package:bccp/domain/repositories/auth_repository.dart';
import 'package:either_dart/either.dart';

import '../../domain/models/request/auth/login_request.dart';
import '../data_sources/api/api_client_provider.dart';

class AuthRepositoryImpl extends AuthRepository {
  final _apiClient = ApiClientProvider.apiClient;

  @override
  Future<Either<String, LoginResponse>> login(LoginRequest body) async {
    try {
      final response = await _apiClient!.login(body);
      if (response.success && response.data != null) {
        await SharedPreferencesHelper.saveStringValue(
            SharedPreferencesHelper.userToken, response.data!.token);
        return Right(response.data!);
      } else {
        return Left(response.message);
      }
    } catch (error) {
      return Left(error.toMessage);
    }
  }
}
