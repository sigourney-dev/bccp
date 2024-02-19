// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lead_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LeadRequest _$LeadRequestFromJson(Map<String, dynamic> json) => LeadRequest(
      customerKind: json['customer_kind'] as String? ?? '',
      assignedId: json['assigned_id'] as String? ?? 'NULL',
      businessLine: json['business_line'] as String? ?? '',
      customerName: json['customer_name'] as String? ?? '',
      customerType: json['customer_type'] as String? ?? '',
      phone: json['phone'] as String? ?? '',
      pageIndex: json['pageIndex'] as int? ?? 0,
      pageSize: json['pageSize'] as int? ?? 20,
    );

Map<String, dynamic> _$LeadRequestToJson(LeadRequest instance) =>
    <String, dynamic>{
      'customer_kind': instance.customerKind,
      'customer_type': instance.customerType,
      'customer_name': instance.customerName,
      'phone': instance.phone,
      'business_line': instance.businessLine,
      'assigned_id': instance.assignedId,
      'pageSize': instance.pageSize,
      'pageIndex': instance.pageIndex,
    };
