import 'package:bccp/application/extensions/object_extensions.dart';
import 'package:bccp/data/data_sources/api/api_client_provider.dart';
import 'package:bccp/domain/models/request/lead/create_lead_request.dart';
import 'package:bccp/domain/models/request/lead/lead_request.dart';
import 'package:bccp/domain/models/response/lead/create_lead_response.dart';
import 'package:bccp/domain/models/response/lead/lead_response.dart';
import 'package:bccp/domain/repositories/lead_repository.dart';
import 'package:either_dart/either.dart';

class LeadRepositoryImpl extends LeadRepository {
  final _apiClient = ApiClientProvider.apiClient;

  @override
  Future<Either<String, List<LeadResponse>>> getListLeads(
      int pageIndex, int pageSize) async {
    try {
      final body = LeadRequest(
        pageIndex: pageIndex,
        pageSize: pageSize,
      );
      final response = await _apiClient!.getListLeads(body);
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
  Future<Either<String, CreateLeadResponse>> createNewLead(
      CreateLeadRequest body) async {
    try {
      final response = await _apiClient!.createNewLead(body);
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
