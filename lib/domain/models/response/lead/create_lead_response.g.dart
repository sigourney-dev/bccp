// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_lead_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateLeadResponse _$CreateLeadResponseFromJson(Map<String, dynamic> json) =>
    CreateLeadResponse(
      customerName: json['customer_name'] as String,
      phone: json['phone'] as String,
      email: json['email'] as String,
      customerKind: json['customer_kind'] as String?,
      customerType: json['customer_type'] as String?,
      companyName: json['company_name'] as String?,
      estimatedQuantity: json['estimated_quantity'] as String?,
      businessLine: json['business_line'] as String?,
      servicesGroup: json['services_group'] as String?,
      service: json['service'] as String?,
      valuedAddedService: json['valued_added_service'] as String?,
      salesChannel: json['sales_channel'] as String?,
      content: json['content'] as String?,
      taxIdentificationNumber: json['tax_identification_number'] as String?,
      leadStatus: json['lead_status'] as String?,
      contactId: json['contact_id'] as String?,
      assignedId: json['assigned_id'] as String?,
      accountId: json['account_id'] as String?,
      customerIssues: json['customer_issues'] as String?,
      yeuCauVaDacThuKhac: json['yeu_cau_va_dac_thu_khac'] as String?,
      yeuCauVeLuuTruHangHoa: json['yeu_cau_ve_luu_tru_hang_hoa'] as String?,
      yeuCauVePhat: json['yeu_cau_ve_phat'] as String?,
      yeuCauVeVanChuyen: json['yeu_cau_ve_van_chuyen'] as String?,
      yeuCauVeKhaiThac: json['yeu_cau_ve_khai_thac'] as String?,
      yeuCauVeThuGom: json['yeu_cau_ve_thu_gom'] as String?,
      yeuCauVeThoiGianToanTrinh:
          json['yeu_cau_ve_thoi_gian_toan_trinh'] as String?,
      yeuCauVeGiaCuoc: json['yeu_cau_ve_gia_cuoc'] as String?,
      averageDiscountRate: json['average_discount_rate'] as String?,
      collectAddress: json['collect_address'] as String?,
      companyAddress: json['company_address'] as String?,
      id: json['id'] as int,
      broker: json['broker'] as String?,
      cause: json['cause'] as String?,
      cod: json['cod'] as String?,
      employeeQuantity: json['employee_quantity'] as String?,
      leadRanking: json['lead_ranking'] as String?,
      linkFanpage: json['link_fanpage'] as String?,
      revenueSize: json['revenue_size'] as String?,
      yeuCauVeChuyenHoan: json['yeu_cau_ve_chuyen_hoan'] as String?,
    );

Map<String, dynamic> _$CreateLeadResponseToJson(CreateLeadResponse instance) =>
    <String, dynamic>{
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
      'yeu_cau_ve_chuyen_hoan': instance.yeuCauVeChuyenHoan,
      'yeu_cau_va_dac_thu_khac': instance.yeuCauVaDacThuKhac,
      'customer_issues': instance.customerIssues,
      'contact_id': instance.contactId,
      'account_id': instance.accountId,
      'id': instance.id,
    };
