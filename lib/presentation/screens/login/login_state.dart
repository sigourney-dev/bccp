part of 'login_cubit.dart';

class LoginState extends Equatable {
  final String username;
  final String password;
  final LoadStatus loginStatus;
  final String? loginMessage;
  final String? usernameErrorMessage;
  final bool showPassword;
  final bool isEnabled;
  final bool isChecked;

  const LoginState({
    this.username = '',
    this.password = '',
    this.loginStatus = LoadStatus.initial,
    this.loginMessage,
    this.usernameErrorMessage,
    this.showPassword = false,
    this.isEnabled = false,
    this.isChecked = false,
  });

  LoginState copyWith({
    String? username,
    String? password,
    LoadStatus? loginStatus,
    String? loginMessage,
    String? usernameErrorMessage,
    bool? showPassword,
    bool? isEnabled,
    bool? isChecked,
  }) {
    return LoginState(
      username: username ?? this.username,
      password: password ?? this.password,
      loginStatus: loginStatus ?? this.loginStatus,
      loginMessage: loginMessage ?? this.loginMessage,
      usernameErrorMessage: usernameErrorMessage ?? this.usernameErrorMessage,
      showPassword: showPassword ?? this.showPassword,
      isEnabled: isEnabled ?? this.isEnabled,
      isChecked: isChecked ?? this.isChecked,
    );
  }

  @override
  List<Object?> get props => [
        username,
        password,
        loginStatus,
        loginMessage,
        usernameErrorMessage,
        showPassword,
        isEnabled,
        isChecked
      ];
}
