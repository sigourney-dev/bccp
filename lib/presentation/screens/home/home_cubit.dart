import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../di.dart';
import 'package:bccp/domain/repositories/home_repository.dart';
import 'package:bccp/application/enums/load_status.dart';

import '../../../domain/models/response/home/task_response.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeState());

  final _homeRepository = getIt<HomeRepository>();

  Future<void> getDashboard() async {
    emit(state.copyWith(dashboardStatus: LoadStatus.loading));
    try {
      final response = await _homeRepository.getDashboard();
      if (response.right != null) {
        emit(state.copyWith(
          dashboardStatus: LoadStatus.success,
          leadTotal: response.right.leadTotal,
          opportunityTotal: response.right.opportunityTotal,
          accountTotal: response.right.accountTotal,
        ));
      } else {
        emit(state.copyWith(
            dashboardStatus: LoadStatus.failure,
            dashboardMessage: response.left));
      }
    } catch (error) {
      emit(state.copyWith(dashboardStatus: LoadStatus.failure));
    }
  }

  Future<void> getListTask(
    int pageIndex,
    int pageSize,
    List<String> statusArr,
    String taskDate,
  ) async {
    emit(state.copyWith(taskStatus: LoadStatus.loading));
    try {
      final response = await _homeRepository.getListTask(
        pageIndex,
        pageSize,
        statusArr,
        taskDate,
      );
      if (response.isRight) {
        emit(state.copyWith(
          taskStatus: LoadStatus.success,
          listTasks: response.right,
        ));
      } else {
        emit(state.copyWith(
          taskStatus: LoadStatus.failure,
        ));
      }
    } catch (error) {
      emit(state.copyWith(taskStatus: LoadStatus.failure));
    }
  }
}
