// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lead_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LeadDetailResponse _$LeadDetailResponseFromJson(Map<String, dynamic> json) =>
    LeadDetailResponse(
      id: json['id'] as int? ?? 0,
      customerName: json['customer_name'] as String? ?? '',
      customerType: json['customer_type'] as String? ?? '',
      customerKind: json['customer_kind'] as String? ?? '',
      companyName: json['company_name'] as String? ?? '',
      companyAddress: json['company_address'] as String? ?? '',
      collectAddress: json['collect_address'] as String? ?? '',
      phone: json['phone'] as String? ?? '',
      email: json['email'] as String? ?? '',
      revenueSize: json['revenue_size'],
      estimatedQuantity: json['estimated_quantity'],
      businessLine: json['business_line'],
      servicesGroup: json['services_group'],
      service: json['service'],
      valuedAddedService: json['valued_added_service'],
      salesChannel: json['sales_channel'],
      content: json['content'] as String? ?? '',
      linkFanpage: json['link_fanpage'] as String? ?? '',
      broker: json['broker'],
      cause: json['cause'],
      assignedId: json['assigned_id'],
      averageDiscountRate: json['average_discount_rate'],
      employeeQuantity: json['employee_quantity'],
      leadRanking: json['lead_ranking'],
      leadStatus: json['lead_status'],
      taxIdentificationNumber: json['tax_identification_number'],
      yeuCauVeGiaCuoc: json['yeu_cau_ve_gia_cuoc'],
      yeuCauVeThoiGianToanTrinh: json['yeu_cau_ve_thoi_gian_toan_trinh'],
      yeuCauVeThuGom: json['yeu_cau_ve_thu_gom'],
      yeuCauVeKhaiThac: json['yeu_cau_ve_khai_thac'],
      yeuCauVeVanChuyen: json['yeu_cau_ve_van_chuyen'],
      yeuCauVePhat: json['yeu_cau_ve_phat'],
      cod: json['cod'] as int? ?? 0,
      yeuCauVeLuuTruHangHoa: json['yeu_cau_ve_luu_tru_hang_hoa'],
      yeuCauVaDacThuKhac: json['yeu_cau_va_dac_thu_khac'],
      yeuCauVeTiLeChuyenHoan: json['yeu_cau_ve_ti_le_chuyen_hoan'],
      customerIssues: json['customer_issues'],
      contactId: json['contact_id'],
      accountId: json['account_id'],
    );

Map<String, dynamic> _$LeadDetailResponseToJson(LeadDetailResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'customer_name': instance.customerName,
      'customer_kind': instance.customerKind,
      'customer_type': instance.customerType,
      'company_name': instance.companyName,
      'company_address': instance.companyAddress,
      'collect_address': instance.collectAddress,
      'phone': instance.phone,
      'email': instance.email,
      'revenue_size': instance.revenueSize,
      'estimated_quantity': instance.estimatedQuantity,
      'business_line': instance.businessLine,
      'services_group': instance.servicesGroup,
      'service': instance.service,
      'valued_added_service': instance.valuedAddedService,
      'sales_channel': instance.salesChannel,
      'content': instance.content,
      'link_fanpage': instance.linkFanpage,
      'broker': instance.broker,
      'cause': instance.cause,
      'assigned_id': instance.assignedId,
      'average_discount_rate': instance.averageDiscountRate,
      'employee_quantity': instance.employeeQuantity,
      'lead_ranking': instance.leadRanking,
      'lead_status': instance.leadStatus,
      'tax_identification_number': instance.taxIdentificationNumber,
      'yeu_cau_ve_gia_cuoc': instance.yeuCauVeGiaCuoc,
      'yeu_cau_ve_thoi_gian_toan_trinh': instance.yeuCauVeThoiGianToanTrinh,
      'yeu_cau_ve_thu_gom': instance.yeuCauVeThuGom,
      'yeu_cau_ve_khai_thac': instance.yeuCauVeKhaiThac,
      'yeu_cau_ve_van_chuyen': instance.yeuCauVeVanChuyen,
      'yeu_cau_ve_phat': instance.yeuCauVePhat,
      'cod': instance.cod,
      'yeu_cau_ve_luu_tru_hang_hoa': instance.yeuCauVeLuuTruHangHoa,
      'yeu_cau_ve_ti_le_chuyen_hoan': instance.yeuCauVeTiLeChuyenHoan,
      'yeu_cau_va_dac_thu_khac': instance.yeuCauVaDacThuKhac,
      'customer_issues': instance.customerIssues,
      'contact_id': instance.contactId,
      'account_id': instance.accountId,
    };