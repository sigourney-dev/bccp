part of 'account_cubit.dart';

class AccountState extends Equatable {
  final LoadStatus getUserProfileStatus;
  final UserResponse? userProfile;

  final LoadStatus logoutStatus;

  const AccountState({
    this.getUserProfileStatus = LoadStatus.initial,
    this.userProfile,
    this.logoutStatus = LoadStatus.initial,
  });

  AccountState copyWith({
    LoadStatus? getUserProfileStatus,
    UserResponse? userProfile,
    LoadStatus? logoutStatus,
  }) {
    return AccountState(
      getUserProfileStatus: getUserProfileStatus ?? this.getUserProfileStatus,
      userProfile: userProfile ?? this.userProfile,
      logoutStatus: logoutStatus ?? this.logoutStatus,
    );
  }

  @override
  List<Object?> get props => [
        getUserProfileStatus,
        userProfile,
        logoutStatus,
      ];
}
