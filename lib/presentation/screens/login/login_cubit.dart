import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:dio/dio.dart';

import '../../../application/enums/load_status.dart';
import '../../../di.dart';
import '../../../domain/models/request/auth/login_request.dart';
import '../../../domain/repositories/auth_repository.dart';
import 'package:bccp/application/extensions/object_extensions.dart';
import '../account/account_cubit.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(const LoginState());

  final _authRepository = getIt<AuthRepository>();
  final _accountCubit = getIt<AccountCubit>();

  void onChangeUsername(String username) {
    String usernameErrorMessage = '';
    if (username.trim().isEmpty) {
      usernameErrorMessage = 'Chưa điền tên đăng nhập';
    }
    emit(state.copyWith(
        username: username.trim(), usernameErrorMessage: usernameErrorMessage));
  }

  void onChangePassword(String password) {
    emit(state.copyWith(password: password.trim()));
  }

  void onChangeShowPassword(bool showPassword) {
    emit(state.copyWith(showPassword: showPassword));
  }

  void onCheck(bool isChecked) {
    emit(state.copyWith(isChecked: isChecked));
  }

  void enableButton() {
    if (state.username.isEmpty || state.password.isEmpty) {
      emit(state.copyWith(isEnabled: false));
      return;
    }
    emit(state.copyWith(isEnabled: true));
  }

  Future<void> login() async {
    var dio = Dio();
    try {
      emit(state.copyWith(loginStatus: LoadStatus.loading));
      final params = LoginRequest(
          username: state.username,
          password: state.password,
          withPermissions: true);
      final response = await _authRepository.login(params);

      if (response.isRight) {
        _accountCubit.getUserProfile(forceRefresh: true);
        emit(state.copyWith(loginStatus: LoadStatus.success));
        return;
      } else {
        emit(state.copyWith(
            loginStatus: LoadStatus.failure, loginMessage: response.left));
      }
    } catch (error) {
      emit(state.copyWith(
          loginStatus: LoadStatus.failure, loginMessage: error.toMessage));
    }
  }
}
