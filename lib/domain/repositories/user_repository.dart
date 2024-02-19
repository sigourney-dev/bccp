import 'package:either_dart/either.dart';

import '../models/response/user/user_response.dart';

abstract class UserRepository {
  Future<Either<String, UserResponse>> getUserProfile();
}
