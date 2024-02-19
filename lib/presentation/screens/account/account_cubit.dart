import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../application/enums/load_status.dart';
import '../../../data/data_sources/storages/shared_preferences.dart';
import '../../../di.dart';
import '../../../domain/models/response/user/user_response.dart';
import '../../../domain/repositories/user_repository.dart';

part 'account_state.dart';

class AccountCubit extends Cubit<AccountState> {
  AccountCubit() : super(const AccountState());

  final _userRepository = getIt<UserRepository>();

  Future<UserResponse?> getUserProfile({bool forceRefresh = false}) async {
    try {
      if (state.userProfile != null && !forceRefresh) return state.userProfile;
      emit(state.copyWith(getUserProfileStatus: LoadStatus.loading));

      final response = await _userRepository.getUserProfile();
      if (response.isRight) {
        await SharedPreferencesHelper.saveStringValue(
            SharedPreferencesHelper.accountId, response.right.username);
        emit(state.copyWith(
            getUserProfileStatus: LoadStatus.success,
            userProfile: response.right));
        return response.right;
      }

      emit(state.copyWith(getUserProfileStatus: LoadStatus.failure));
      return null;
    } catch (error) {
      emit(state.copyWith(getUserProfileStatus: LoadStatus.failure));
      return null;
    }
  }

  Future<void> logout() async {
    try {
      if (state.logoutStatus == LoadStatus.loading) return;

      emit(state.copyWith(logoutStatus: LoadStatus.loading));

      await SharedPreferencesHelper.removeByKey(
          SharedPreferencesHelper.userToken);
      await SharedPreferencesHelper.removeByKey(
          SharedPreferencesHelper.accountId);

      emit(const AccountState(logoutStatus: LoadStatus.success));
    } catch (error) {
      emit(state.copyWith(logoutStatus: LoadStatus.failure));
    }
  }
}
