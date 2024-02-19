import 'package:json_annotation/json_annotation.dart';

part 'create_lead_response.g.dart';

@JsonSerializable()
class CreateLeadResponse {
  @JsonKey(name: 'customer_name')
  final String customerName;
  @JsonKey(name: 'customer_kind')
  final String? customerKind;
  @JsonKey(name: 'customer_type')
  final String? customerType;
  @JsonKey(name: 'company_name')
  final String? companyName;
  @JsonKey(name: 'company_address')
  final String? companyAddress;
  @JsonKey(name: 'collect_address')
  final String? collectAddress;
  final String phone;
  final String email;
  @JsonKey(name: 'revenue_size')
  final String? revenueSize;
  @JsonKey(name: 'estimated_quantity')
  final String? estimatedQuantity;
  @JsonKey(name: 'business_line')
  final String? businessLine;
  @JsonKey(name: 'services_group')
  final String? servicesGroup;
  final String? service;
  @JsonKey(name: 'valued_added_service')
  final String? valuedAddedService;
  @JsonKey(name: 'sales_channel')
  final String? salesChannel;
  final String? content;
  @JsonKey(name: 'link_fanpage')
  final String? linkFanpage;
  final String? broker;
  final String? cause;
  @JsonKey(name: 'assigned_id')
  final String? assignedId;
  @JsonKey(name: 'average_discount_rate')
  final String? averageDiscountRate;
  @JsonKey(name: 'employee_quantity')
  final String? employeeQuantity;
  @JsonKey(name: 'lead_ranking')
  final String? leadRanking;
  @JsonKey(name: 'lead_status')
  final String? leadStatus;
  @JsonKey(name: 'tax_identification_number')
  final String? taxIdentificationNumber;
  @JsonKey(name: 'yeu_cau_ve_gia_cuoc')
  final String? yeuCauVeGiaCuoc;
  @JsonKey(name: 'yeu_cau_ve_thoi_gian_toan_trinh')
  final String? yeuCauVeThoiGianToanTrinh;
  @JsonKey(name: 'yeu_cau_ve_thu_gom')
  final String? yeuCauVeThuGom;
  @JsonKey(name: 'yeu_cau_ve_khai_thac')
  final String? yeuCauVeKhaiThac;
  @JsonKey(name: 'yeu_cau_ve_van_chuyen')
  final String? yeuCauVeVanChuyen;
  @JsonKey(name: 'yeu_cau_ve_phat')
  final String? yeuCauVePhat;
  final String? cod;
  @JsonKey(name: 'yeu_cau_ve_luu_tru_hang_hoa')
  final String? yeuCauVeLuuTruHangHoa;
  @JsonKey(name: 'yeu_cau_ve_chuyen_hoan')
  final String? yeuCauVeChuyenHoan;
  @JsonKey(name: 'yeu_cau_va_dac_thu_khac')
  final String? yeuCauVaDacThuKhac;
  @JsonKey(name: 'customer_issues')
  final String? customerIssues;
  @JsonKey(name: 'contact_id')
  final String? contactId;
  @JsonKey(name: 'account_id')
  final String? accountId;
  final int id;

  const CreateLeadResponse({
    required this.customerName,
    required this.phone,
    required this.email,
    this.customerKind,
    this.customerType,
    this.companyName,
    this.estimatedQuantity,
    this.businessLine,
    this.servicesGroup,
    this.service,
    this.valuedAddedService,
    this.salesChannel,
    this.content,
    this.taxIdentificationNumber,
    this.leadStatus,
    this.contactId,
    this.assignedId,
    this.accountId,
    this.customerIssues,
    this.yeuCauVaDacThuKhac,
    this.yeuCauVeLuuTruHangHoa,
    this.yeuCauVePhat,
    this.yeuCauVeVanChuyen,
    this.yeuCauVeKhaiThac,
    this.yeuCauVeThuGom,
    this.yeuCauVeThoiGianToanTrinh,
    this.yeuCauVeGiaCuoc,
    this.averageDiscountRate,
    this.collectAddress,
    this.companyAddress,
    required this.id,
    this.broker,
    this.cause,
    this.cod,
    this.employeeQuantity,
    this.leadRanking,
    this.linkFanpage,
    this.revenueSize,
    this.yeuCauVeChuyenHoan,
  });

  factory CreateLeadResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateLeadResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CreateLeadResponseToJson(this);
}
