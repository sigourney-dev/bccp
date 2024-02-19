import 'package:bccp/domain/models/request/lead/create_lead_request.dart';
import 'package:bccp/domain/models/response/lead/create_lead_response.dart';
import 'package:bccp/domain/models/response/lead/lead_response.dart';
import 'package:either_dart/either.dart';

abstract class LeadRepository {
  Future<Either<String, List<LeadResponse>>> getListLeads(
      int pageIndex, int pageSize);

  Future<Either<String, CreateLeadResponse>> createNewLead(
      CreateLeadRequest body);
}
