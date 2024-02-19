import 'package:either_dart/either.dart';

import '../data_sources/api/api_client_provider.dart';
import 'package:bccp/domain/repositories/user_repository.dart';
import 'package:bccp/application/extensions/object_extensions.dart';
import 'package:bccp/domain/models/response/user/user_response.dart';

class UserRepositoryImpl extends UserRepository {
  final _apiClient = ApiClientProvider.apiClient;

  @override
  Future<Either<String, UserResponse>> getUserProfile() async {
    try {
      final response = await _apiClient!.getUserProfile();
      if (response.success && response.data != null) {
        return Right(response.data!);
      }

      return Left(response.message);
    } catch (error) {
      return Left(error.toMessage);
    }
  }
}
