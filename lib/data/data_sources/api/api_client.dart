import 'dart:io';
import 'package:bccp/domain/models/request/lead/create_lead_request.dart';
import 'package:bccp/domain/models/request/lead/task_request.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../domain/models/request/auth/login_request.dart';
import '../../../domain/models/response/home/dashboard_response.dart';
import '../../../domain/models/response/lead/create_lead_response.dart';
import '../../../domain/models/response/lead/lead_response.dart';
import '../../../domain/models/response/auth/login_response.dart';
import '../../../domain/models/response/user/user_response.dart';
import 'package:bccp/domain/models/request/lead/lead_request.dart';
import 'package:bccp/domain/models/response/home/task_response.dart';
import 'api_response.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: '')
abstract class ApiClient {
  factory ApiClient(Dio dio, {String? baseUrl}) = _ApiClient;

  /// Home
  @GET('/mobile/dashboard/mobile-home')
  Future<ApiResponse<DashboardResponse>> getDashboard();

  @GET('/tasks')
  Future<ApiResponse<List<TaskResponse>>> getListTasks(
    @Body() TaskRequest body,
  );

  /// Lead
  @GET('/leads')
  Future<ApiResponse<List<LeadResponse>>> getListLeads(
    @Body() LeadRequest body,
  );

  @POST('/leads')
  Future<ApiResponse<CreateLeadResponse>> createNewLead(
    @Body() CreateLeadRequest body,
  );

  /// User
  @GET('/info')
  Future<ApiResponse<UserResponse>> getUserProfile();

  @POST('/login')
  Future<ApiResponse<LoginResponse>> login(@Body() LoginRequest body);
}
