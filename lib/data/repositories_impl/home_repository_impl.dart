import 'package:bccp/data/data_sources/api/api_response.dart';
import 'package:bccp/domain/models/request/common/common_request.dart';
import 'package:bccp/domain/models/request/lead/task_request.dart';
import 'package:bccp/domain/models/response/home/task_response.dart';
import 'package:either_dart/either.dart';

import 'package:bccp/domain/repositories/home_repository.dart';
import 'package:bccp/data/data_sources/api/api_client_provider.dart';
import 'package:bccp/application/extensions/object_extensions.dart';
import 'package:bccp/domain/models/response/home/dashboard_response.dart';

class HomeRepositoryImpl extends HomeRepository {
  final _apiClient = ApiClientProvider.apiClient;

  @override
  Future<Either<String, DashboardResponse>> getDashboard() async {
    try {
      final response = await _apiClient!.getDashboard();
      if (response.success && response.data != null) {
        return Right(response.data!);
      } else {
        return Left(response.message);
      }
    } catch (error) {
      return Left(error.toMessage);
    }
  }

  @override
  Future<Either<String, List<TaskResponse>>> getListTask(
    int pageIndex,
    int pageSize,
    List<String> statusArr,
    String taskDate,
  ) async {
    try {
      final body = TaskRequest(
          pageIndex: pageIndex,
          pageSize: pageSize,
          statusArr: statusArr,
          taskDate: taskDate);
      final response = await _apiClient!.getListTasks(body);
      if (response.success) {
        return Right(response.data!);
      } else {
        return Left(response.message);
      }
    } catch (error) {
      return Left(error.toMessage);
    }
  }
}
