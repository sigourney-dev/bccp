import 'package:json_annotation/json_annotation.dart';

part 'lead_detail_response.g.dart';

@JsonSerializable()
class LeadDetailResponse {
  final int id;
  @JsonKey(name: 'customer_name')
  final String customerName;
  @JsonKey(name: 'customer_kind')
  final String customerKind;
  @JsonKey(name: 'customer_type')
  final String customerType;
  @JsonKey(name: 'company_name')
  final String companyName;
  @JsonKey(name: 'company_address')
  final String companyAddress;
  @JsonKey(name: 'collect_address')
  final String collectAddress;
  final String phone;
  final String email;
  @JsonKey(name: 'revenue_size')
  final dynamic revenueSize;
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
  final String content;
  @JsonKey(name: 'link_fanpage')
  final String linkFanpage;
  final dynamic broker;
  final dynamic cause;
  @JsonKey(name: 'assigned_id')
  final dynamic assignedId;
  @JsonKey(name: 'average_discount_rate')
  final dynamic averageDiscountRate;
  @JsonKey(name: 'employee_quantity')
  final dynamic employeeQuantity;
  @JsonKey(name: 'lead_ranking')
  final dynamic leadRanking;
  @JsonKey(name: 'lead_status')
  final dynamic leadStatus;
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
  final int cod;
  @JsonKey(name: 'yeu_cau_ve_luu_tru_hang_hoa')
  final dynamic yeuCauVeLuuTruHangHoa;
  @JsonKey(name: 'yeu_cau_ve_ti_le_chuyen_hoan')
  final dynamic yeuCauVeTiLeChuyenHoan;
  @JsonKey(name: 'yeu_cau_va_dac_thu_khac')
  final dynamic yeuCauVaDacThuKhac;
  @JsonKey(name: 'customer_issues')
  final dynamic customerIssues;
  @JsonKey(name: 'contact_id')
  final dynamic contactId;
  @JsonKey(name: 'account_id')
  final dynamic accountId;

  const LeadDetailResponse({
    this.id = 0,
    this.customerName = '',
    this.customerType = '',
    this.customerKind = '',
    this.companyName = '',
    this.companyAddress = '',
    this.collectAddress = '',
    this.phone = '',
    this.email = '',
    this.revenueSize,
    this.estimatedQuantity,
    this.businessLine,
    this.servicesGroup,
    this.service,
    this.valuedAddedService,
    this.salesChannel,
    this.content = '',
    this.linkFanpage = '',
    this.broker,
    this.cause,
    this.assignedId,
    this.averageDiscountRate,
    this.employeeQuantity,
    this.leadRanking,
    this.leadStatus,
    this.taxIdentificationNumber,
    this.yeuCauVeGiaCuoc,
    this.yeuCauVeThoiGianToanTrinh,
    this.yeuCauVeThuGom,
    this.yeuCauVeKhaiThac,
    this.yeuCauVeVanChuyen,
    this.yeuCauVePhat,
    this.cod = 0,
    this.yeuCauVeLuuTruHangHoa,
    this.yeuCauVaDacThuKhac,
    this.yeuCauVeTiLeChuyenHoan,
    this.customerIssues,
    this.contactId,
    this.accountId,
  });

  factory LeadDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$LeadDetailResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LeadDetailResponseToJson(this);
}
