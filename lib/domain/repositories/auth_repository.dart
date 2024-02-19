import 'package:either_dart/either.dart';

import '../models/request/auth/login_request.dart';
import '../models/response/auth/login_response.dart';

abstract class AuthRepository {
  Future<Either<String, LoginResponse>> login(LoginRequest body);
}
