import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../application/enums/load_status.dart';
import '../../../data/data_sources/storages/shared_preferences.dart';
import '../../../di.dart';
import '../../../domain/models/response/user/user_response.dart';
import '../account/account_cubit.dart';

part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(const SplashState());

  final _accountCubit = getIt<AccountCubit>();

  Future<void> onCheckLoggedInfo() async {
    try {
      emit(state.copyWith(checkLoggedInfoStatus: LoadStatus.loading));
      final accessToken = await SharedPreferencesHelper.getStringValue(
          SharedPreferencesHelper.userToken);
      if (accessToken.isNotEmpty) {
        final userProfile =
            await _accountCubit.getUserProfile(forceRefresh: true);
        if (userProfile != null) {
          emit(state.copyWith(
            checkLoggedInfoStatus: LoadStatus.success,
            userProfile: userProfile,
          ));
          return;
        }

        await SharedPreferencesHelper.removeByKey(
            SharedPreferencesHelper.userToken);
        emit(state.copyWith(checkLoggedInfoStatus: LoadStatus.failure));
        return;
      }

      await Future.delayed(const Duration(seconds: 1));
      emit(state.copyWith(checkLoggedInfoStatus: LoadStatus.failure));
    } catch (error) {
      emit(state.copyWith(checkLoggedInfoStatus: LoadStatus.failure));
    }
  }
}
