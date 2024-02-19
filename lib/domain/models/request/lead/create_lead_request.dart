import 'package:json_annotation/json_annotation.dart';

part 'create_lead_request.g.dart';

@JsonSerializable()
class CreateLeadRequest {
  @JsonKey(name: 'customer_name')
  final String customerName;
  final String phone;
  final String email;
  final String? position;
  @JsonKey(name: 'desk_phone')
  final String? deskPhone;
  @JsonKey(name: 'company_name')
  final String? companyName;
  @JsonKey(name: 'tax_identification_number')
  final String? taxIdentificationNumber;
  final String? website;
  @JsonKey(name: 'annual_revenue')
  final double? annualRevenue;
  @JsonKey(name: 'estimated_quantity')
  final double? estimatedQuantity;
  final String? content;
  @JsonKey(name: 'customer_kind')
  final String? customerKind;
  final String? addressing;
  final String? source;
  @JsonKey(name: 'levels_of_care')
  final String? levelsOfCare;
  @JsonKey(name: 'business_line')
  final String? businessLine;
  @JsonKey(name: 'company_size')
  final String? companySize;
  @JsonKey(name: 'customer_type')
  final String? customerType;
  @JsonKey(name: 'customer_class')
  final String? customerClass;
  final String? ranked;
  @JsonKey(name: 'types_of_commodities')
  final String? typesOfCommodities;
  @JsonKey(name: 'services_group')
  final String? servicesGroup;
  final String? service;
  @JsonKey(name: 'valued_added_service')
  final String? valuedAddedService;
  @JsonKey(name: 'sales_channel')
  final String? salesChannel;
  @JsonKey(name: 'delivery_direction')
  final String? deliveryDirection;
  @JsonKey(name: 'reject_call')
  final bool? rejectCall;
  @JsonKey(name: 'reject_email')
  final bool? rejectEmail;
  final String? birthday;

  const CreateLeadRequest({
    required this.customerName,
    required this.phone,
    required this.email,
    this.deliveryDirection,
    this.typesOfCommodities,
    this.annualRevenue,
    this.website,
    this.companySize,
    this.birthday,
    this.source,
    this.rejectEmail,
    this.rejectCall,
    this.deskPhone,
    this.position,
    this.addressing,
    this.taxIdentificationNumber,
    this.levelsOfCare,
    this.ranked,
    this.content,
    this.salesChannel,
    this.valuedAddedService,
    this.service,
    this.servicesGroup,
    this.businessLine,
    this.estimatedQuantity,
    this.companyName,
    this.customerType,
    this.customerKind,
    this.customerClass,
  });

  factory CreateLeadRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateLeadRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateLeadRequestToJson(this);
}
