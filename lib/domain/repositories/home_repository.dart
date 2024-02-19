import 'package:bccp/domain/models/response/home/task_response.dart';
import 'package:either_dart/either.dart';

import 'package:bccp/domain/models/response/home/dashboard_response.dart';

import '../../data/data_sources/api/api_response.dart';

abstract class HomeRepository {
  Future<Either<String, DashboardResponse>> getDashboard();

  Future<Either<String, List<TaskResponse>>> getListTask(
    int pageIndex,
    int pageSize,
    List<String> statusArr,
    String taskDate,
  );
}
