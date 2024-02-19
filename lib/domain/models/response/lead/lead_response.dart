import 'package:json_annotation/json_annotation.dart';

part 'lead_response.g.dart';

@JsonSerializable()
class LeadResponse {
  final int id;
  @JsonKey(name: 'customer_name')
  final String customerName;
  @JsonKey(name: 'customer_kind')
  final String customerKind;
  @JsonKey(name: 'customer_type')
  final dynamic customerType;
  @JsonKey(name: 'company_name')
  final String companyName;
  @JsonKey(name: 'company_address')
  final dynamic companyAddress;
  @JsonKey(name: 'collect_address')
  final dynamic collectAddress;
  final String phone;
  final String email;
  @JsonKey(name: 'estimated_quantity')
  final dynamic estimatedQuantity;
  @JsonKey(name: 'business_line')
  final dynamic businessLine;
  @JsonKey(name: 'services_group')
  final dynamic servicesGroup;
  final dynamic service;
  @JsonKey(name: 'valued_added_service')
  final dynamic valuedAddedService;
  @JsonKey(name: 'sales_channel')
  final dynamic salesChannel;
  final dynamic content;
  final dynamic cause;
  @JsonKey(name: 'assigned_id')
  final int assignedId;
  @JsonKey(name: 'average_discount_rate')
  final int averageDiscountRate;
  final dynamic ranked;
  @JsonKey(name: 'levels_of_care')
  final String levelsOfCare;
  @JsonKey(name: 'tax_identification_number')
  final dynamic taxIdentificationNumber;
  @JsonKey(name: 'yeu_cau_ve_gia_cuoc')
  final dynamic yeuCauVeGiaCuoc;
  @JsonKey(name: 'yeu_cau_ve_thoi_gian_toan_trinh')
  final dynamic yeuCauVeThoiGianToanTrinh;
  @JsonKey(name: 'yeu_cau_ve_thu_gom')
  final dynamic yeuCauVeThuGom;
  @JsonKey(name: 'yeu_cau_ve_khai_thac')
  final dynamic yeuCauVeKhaiThac;
  @JsonKey(name: 'yeu_cau_ve_van_chuyen')
  final dynamic yeuCauVeVanChuyen;
  @JsonKey(name: 'yeu_cau_ve_phat')
  final dynamic yeuCauVePhat;
  final double cod;
  @JsonKey(name: 'yeu_cau_ve_luu_tru_hang_hoa')
  final dynamic yeuCauVeLuuTruHangHoa;
  @JsonKey(name: 'yeu_cau_ve_ty_le_chuyen_hoan')
  final dynamic yeuCauVeTyLeChuyenHoan;
  @JsonKey(name: 'yeu_cau_va_dac_thu_khac')
  final dynamic yeuCauVaDacThuKhac;
  @JsonKey(name: 'customer_issues')
  final dynamic customerIssues;
  @JsonKey(name: 'contact_id')
  final dynamic contactId;
  @JsonKey(name: 'account_id')
  final dynamic accountId;
  final dynamic addressing;
  final dynamic position;
  @JsonKey(name: 'desk_phone')
  final dynamic deskPhone;
  @JsonKey(name: 'reject_call')
  final dynamic rejectCall;
  @JsonKey(name: 'reject_email')
  final dynamic rejectEmail;
  final dynamic source;
  final dynamic birthday;
  @JsonKey(name: 'levels_of_care_description')
  final dynamic levelsOfCareDescription;
  @JsonKey(name: 'company_size')
  final dynamic companySize;
  final dynamic website;
  @JsonKey(name: 'annual_revenue')
  final dynamic annualRevenue;
  final dynamic pos;
  @JsonKey(name: 'types_of_commodities')
  final dynamic typesOfCommodities;
  @JsonKey(name: 'delivery_direction')
  final dynamic deliveryDirection;
  final dynamic actions;
  final dynamic assigned;
  final dynamic competitor;

  const LeadResponse({
    required this.competitor,
    required this.assigned,
    required this.actions,
    this.id = 0,
    this.customerName = '',
    this.customerKind = '',
    this.customerType,
    this.companyName = '',
    this.companyAddress,
    this.collectAddress,
    this.phone = '',
    this.email = '',
    this.estimatedQuantity,
    this.businessLine,
    this.servicesGroup,
    this.service,
    this.valuedAddedService,
    this.salesChannel,
    this.content,
    this.cause,
    this.assignedId = 0,
    this.averageDiscountRate = 0,
    this.ranked,
    this.levelsOfCare = '',
    this.taxIdentificationNumber,
    this.yeuCauVeGiaCuoc,
    this.yeuCauVeThoiGianToanTrinh,
    this.yeuCauVeThuGom,
    this.yeuCauVeKhaiThac,
    this.yeuCauVeVanChuyen,
    this.yeuCauVePhat,
    this.cod = 0,
    this.yeuCauVeLuuTruHangHoa,
    this.yeuCauVeTyLeChuyenHoan,
    this.yeuCauVaDacThuKhac,
    this.customerIssues,
    this.contactId,
    this.accountId,
    this.addressing,
    this.position,
    this.deskPhone,
    this.rejectCall,
    this.rejectEmail,
    this.source,
    this.birthday,
    this.levelsOfCareDescription,
    this.companySize,
    this.website,
    this.annualRevenue,
    this.pos,
    this.typesOfCommodities,
    this.deliveryDirection,
  });

  factory LeadResponse.fromJson(Map<String, dynamic> json) =>
      _$LeadResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LeadResponseToJson(this);
}

/// Action
@JsonSerializable()
class ActionsResponse {
  final bool update;
  final bool delete;

  const ActionsResponse({
    this.delete = false,
    this.update = false,
  });

  factory ActionsResponse.fromJson(Map<String, dynamic> json) =>
      _$ActionsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ActionsResponseToJson(this);
}

/// Assigned
@JsonSerializable()
class AssignedResponse {
  final double id;
  final String username;
  final String email;
  @JsonKey(name: 'email_verified_at')
  final dynamic emailVerifiedAt;
  @JsonKey(name: 'current_team_id')
  final dynamic currentTeamId;
  @JsonKey(name: 'profile_photo_path')
  final dynamic profilePhotoPath;
  final double active;
  @JsonKey(name: 'created_at')
  final String createdAt;
  @JsonKey(name: 'updated_at')
  final String updatedAt;
  final double isAdmin;
  @JsonKey(name: 'full_name')
  final String fullName;
  final String phone;
  final String avatar;
  final String address;
  final String gender;
  final String birthday;
  @JsonKey(name: 'unit_id')
  final double unitId;
  @JsonKey(name: 'unit_ids')
  final dynamic unitIds;
  @JsonKey(name: 'manager_id')
  final double managerId;

  const AssignedResponse({
    this.phone = '',
    this.username = '',
    this.gender = '',
    this.birthday = '',
    this.email = '',
    this.fullName = '',
    this.active = 0,
    this.address = '',
    this.avatar = '',
    this.createdAt = '',
    this.currentTeamId,
    this.emailVerifiedAt,
    this.id = 0,
    this.isAdmin = 0,
    this.managerId = 0,
    this.profilePhotoPath,
    this.unitId = 0,
    this.unitIds,
    this.updatedAt = '',
  });

  factory AssignedResponse.fromJson(Map<String, dynamic> json) =>
      _$AssignedResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AssignedResponseToJson(this);
}

/// Competitor
@JsonSerializable()
class CompetitorResponse {
  final double id;
  @JsonKey(name: 'lead_id')
  final double leadId;
  @JsonKey(name: 'competitor_id')
  final double competitorId;
  final String value;
  @JsonKey(name: 'created_at')
  final String createdAt;
  @JsonKey(name: 'updated_at')
  final String updatedAt;
  const CompetitorResponse({
    this.id = 0,
    this.updatedAt = '',
    this.createdAt = '',
    this.competitorId = 0,
    this.leadId = 0,
    this.value = '',
  });

  factory CompetitorResponse.fromJson(Map<String, dynamic> json) =>
      _$CompetitorResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CompetitorResponseToJson(this);
}
