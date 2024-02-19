// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lead_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LeadResponse _$LeadResponseFromJson(Map<String, dynamic> json) => LeadResponse(
      competitor: json['competitor'],
      assigned: json['assigned'],
      actions: json['actions'],
      id: json['id'] as int? ?? 0,
      customerName: json['customer_name'] as String? ?? '',
      customerKind: json['customer_kind'] as String? ?? '',
      customerType: json['customer_type'],
      companyName: json['company_name'] as String? ?? '',
      companyAddress: json['company_address'],
      collectAddress: json['collect_address'],
      phone: json['phone'] as String? ?? '',
      email: json['email'] as String? ?? '',
      estimatedQuantity: json['estimated_quantity'],
      businessLine: json['business_line'],
      servicesGroup: json['services_group'],
      service: json['service'],
      valuedAddedService: json['valued_added_service'],
      salesChannel: json['sales_channel'],
      content: json['content'],
      cause: json['cause'],
      assignedId: json['assigned_id'] as int? ?? 0,
      averageDiscountRate: json['average_discount_rate'] as int? ?? 0,
      ranked: json['ranked'],
      levelsOfCare: json['levels_of_care'] as String? ?? '',
      taxIdentificationNumber: json['tax_identification_number'],
      yeuCauVeGiaCuoc: json['yeu_cau_ve_gia_cuoc'],
      yeuCauVeThoiGianToanTrinh: json['yeu_cau_ve_thoi_gian_toan_trinh'],
      yeuCauVeThuGom: json['yeu_cau_ve_thu_gom'],
      yeuCauVeKhaiThac: json['yeu_cau_ve_khai_thac'],
      yeuCauVeVanChuyen: json['yeu_cau_ve_van_chuyen'],
      yeuCauVePhat: json['yeu_cau_ve_phat'],
      cod: (json['cod'] as num?)?.toDouble() ?? 0,
      yeuCauVeLuuTruHangHoa: json['yeu_cau_ve_luu_tru_hang_hoa'],
      yeuCauVeTyLeChuyenHoan: json['yeu_cau_ve_ty_le_chuyen_hoan'],
      yeuCauVaDacThuKhac: json['yeu_cau_va_dac_thu_khac'],
      customerIssues: json['customer_issues'],
      contactId: json['contact_id'],
      accountId: json['account_id'],
      addressing: json['addressing'],
      position: json['position'],
      deskPhone: json['desk_phone'],
      rejectCall: json['reject_call'],
      rejectEmail: json['reject_email'],
      source: json['source'],
      birthday: json['birthday'],
      levelsOfCareDescription: json['levels_of_care_description'],
      companySize: json['company_size'],
      website: json['website'],
      annualRevenue: json['annual_revenue'],
      pos: json['pos'],
      typesOfCommodities: json['types_of_commodities'],
      deliveryDirection: json['delivery_direction'],
    );

Map<String, dynamic> _$LeadResponseToJson(LeadResponse instance) =>
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
      'estimated_quantity': instance.estimatedQuantity,
      'business_line': instance.businessLine,
      'services_group': instance.servicesGroup,
      'service': instance.service,
      'valued_added_service': instance.valuedAddedService,
      'sales_channel': instance.salesChannel,
      'content': instance.content,
      'cause': instance.cause,
      'assigned_id': instance.assignedId,
      'average_discount_rate': instance.averageDiscountRate,
      'ranked': instance.ranked,
      'levels_of_care': instance.levelsOfCare,
      'tax_identification_number': instance.taxIdentificationNumber,
      'yeu_cau_ve_gia_cuoc': instance.yeuCauVeGiaCuoc,
      'yeu_cau_ve_thoi_gian_toan_trinh': instance.yeuCauVeThoiGianToanTrinh,
      'yeu_cau_ve_thu_gom': instance.yeuCauVeThuGom,
      'yeu_cau_ve_khai_thac': instance.yeuCauVeKhaiThac,
      'yeu_cau_ve_van_chuyen': instance.yeuCauVeVanChuyen,
      'yeu_cau_ve_phat': instance.yeuCauVePhat,
      'cod': instance.cod,
      'yeu_cau_ve_luu_tru_hang_hoa': instance.yeuCauVeLuuTruHangHoa,
      'yeu_cau_ve_ty_le_chuyen_hoan': instance.yeuCauVeTyLeChuyenHoan,
      'yeu_cau_va_dac_thu_khac': instance.yeuCauVaDacThuKhac,
      'customer_issues': instance.customerIssues,
      'contact_id': instance.contactId,
      'account_id': instance.accountId,
      'addressing': instance.addressing,
      'position': instance.position,
      'desk_phone': instance.deskPhone,
      'reject_call': instance.rejectCall,
      'reject_email': instance.rejectEmail,
      'source': instance.source,
      'birthday': instance.birthday,
      'levels_of_care_description': instance.levelsOfCareDescription,
      'company_size': instance.companySize,
      'website': instance.website,
      'annual_revenue': instance.annualRevenue,
      'pos': instance.pos,
      'types_of_commodities': instance.typesOfCommodities,
      'delivery_direction': instance.deliveryDirection,
      'actions': instance.actions,
      'assigned': instance.assigned,
      'competitor': instance.competitor,
    };

ActionsResponse _$ActionsResponseFromJson(Map<String, dynamic> json) =>
    ActionsResponse(
      delete: json['delete'] as bool? ?? false,
      update: json['update'] as bool? ?? false,
    );

Map<String, dynamic> _$ActionsResponseToJson(ActionsResponse instance) =>
    <String, dynamic>{
      'update': instance.update,
      'delete': instance.delete,
    };

AssignedResponse _$AssignedResponseFromJson(Map<String, dynamic> json) =>
    AssignedResponse(
      phone: json['phone'] as String? ?? '',
      username: json['username'] as String? ?? '',
      gender: json['gender'] as String? ?? '',
      birthday: json['birthday'] as String? ?? '',
      email: json['email'] as String? ?? '',
      fullName: json['full_name'] as String? ?? '',
      active: (json['active'] as num?)?.toDouble() ?? 0,
      address: json['address'] as String? ?? '',
      avatar: json['avatar'] as String? ?? '',
      createdAt: json['created_at'] as String? ?? '',
      currentTeamId: json['current_team_id'],
      emailVerifiedAt: json['email_verified_at'],
      id: (json['id'] as num?)?.toDouble() ?? 0,
      isAdmin: (json['isAdmin'] as num?)?.toDouble() ?? 0,
      managerId: (json['manager_id'] as num?)?.toDouble() ?? 0,
      profilePhotoPath: json['profile_photo_path'],
      unitId: (json['unit_id'] as num?)?.toDouble() ?? 0,
      unitIds: json['unit_ids'],
      updatedAt: json['updated_at'] as String? ?? '',
    );

Map<String, dynamic> _$AssignedResponseToJson(AssignedResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'email_verified_at': instance.emailVerifiedAt,
      'current_team_id': instance.currentTeamId,
      'profile_photo_path': instance.profilePhotoPath,
      'active': instance.active,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'isAdmin': instance.isAdmin,
      'full_name': instance.fullName,
      'phone': instance.phone,
      'avatar': instance.avatar,
      'address': instance.address,
      'gender': instance.gender,
      'birthday': instance.birthday,
      'unit_id': instance.unitId,
      'unit_ids': instance.unitIds,
      'manager_id': instance.managerId,
    };

CompetitorResponse _$CompetitorResponseFromJson(Map<String, dynamic> json) =>
    CompetitorResponse(
      id: (json['id'] as num?)?.toDouble() ?? 0,
      updatedAt: json['updated_at'] as String? ?? '',
      createdAt: json['created_at'] as String? ?? '',
      competitorId: (json['competitor_id'] as num?)?.toDouble() ?? 0,
      leadId: (json['lead_id'] as num?)?.toDouble() ?? 0,
      value: json['value'] as String? ?? '',
    );

Map<String, dynamic> _$CompetitorResponseToJson(CompetitorResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'lead_id': instance.leadId,
      'competitor_id': instance.competitorId,
      'value': instance.value,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };