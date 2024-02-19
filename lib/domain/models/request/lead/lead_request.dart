import 'package:json_annotation/json_annotation.dart';

part 'lead_request.g.dart';

@JsonSerializable()
class LeadRequest {
  @JsonKey(name: 'customer_kind')
  final String customerKind;
  @JsonKey(name: 'customer_type')
  final String customerType;
  @JsonKey(name: 'customer_name')
  final String customerName;
  final String phone;
  @JsonKey(name: 'business_line')
  final String businessLine;
  @JsonKey(name: 'assigned_id')
  final String assignedId;
  final int pageSize;
  final int pageIndex;

  const LeadRequest({
    this.customerKind = '',
    this.assignedId = 'NULL',
    this.businessLine = '',
    this.customerName = '',
    this.customerType = '',
    this.phone = '',
    this.pageIndex = 0,
    this.pageSize = 20,
  });

  factory LeadRequest.fromJson(Map<String, dynamic> json) =>
      _$LeadRequestFromJson(json);

  Map<String, dynamic> toJson() => _$LeadRequestToJson(this);
}
