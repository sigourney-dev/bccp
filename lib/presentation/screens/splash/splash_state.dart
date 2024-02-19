part of 'splash_cubit.dart';

class SplashState extends Equatable {
  final LoadStatus checkLoggedInfoStatus;
  final UserResponse? userProfile;

  const SplashState({
    this.checkLoggedInfoStatus = LoadStatus.initial,
    this.userProfile,
  });

  SplashState copyWith({
    LoadStatus? checkLoggedInfoStatus,
    UserResponse? userProfile,
  }) {
    return SplashState(
      checkLoggedInfoStatus:
          checkLoggedInfoStatus ?? this.checkLoggedInfoStatus,
      userProfile: userProfile ?? this.userProfile,
    );
  }

  @override
  List<Object?> get props => [
        checkLoggedInfoStatus,
        userProfile,
      ];
}
