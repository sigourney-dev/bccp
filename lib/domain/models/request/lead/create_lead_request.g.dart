// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_lead_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateLeadRequest _$CreateLeadRequestFromJson(Map<String, dynamic> json) =>
    CreateLeadRequest(
      customerName: json['customer_name'] as String,
      phone: json['phone'] as String,
      email: json['email'] as String,
      deliveryDirection: json['delivery_direction'] as String?,
      typesOfCommodities: json['types_of_commodities'] as String?,
      annualRevenue: (json['annual_revenue'] as num?)?.toDouble(),
      website: json['website'] as String?,
      companySize: json['company_size'] as String?,
      birthday: json['birthday'] as String?,
      source: json['source'] as String?,
      rejectEmail: json['reject_email'] as bool?,
      rejectCall: json['reject_call'] as bool?,
      deskPhone: json['desk_phone'] as String?,
      position: json['position'] as String?,
      addressing: json['addressing'] as String?,
      taxIdentificationNumber: json['tax_identification_number'] as String?,
      levelsOfCare: json['levels_of_care'] as String?,
      ranked: json['ranked'] as String?,
      content: json['content'] as String?,
      salesChannel: json['sales_channel'] as String?,
      valuedAddedService: json['valued_added_service'] as String?,
      service: json['service'] as String?,
      servicesGroup: json['services_group'] as String?,
      businessLine: json['business_line'] as String?,
      estimatedQuantity: (json['estimated_quantity'] as num?)?.toDouble(),
      companyName: json['company_name'] as String?,
      customerType: json['customer_type'] as String?,
      customerKind: json['customer_kind'] as String?,
      customerClass: json['customer_class'] as String?,
    );

Map<String, dynamic> _$CreateLeadRequestToJson(CreateLeadRequest instance) =>
    <String, dynamic>{
      'customer_name': instance.customerName,
      'phone': instance.phone,
      'email': instance.email,
      'position': instance.position,
      'desk_phone': instance.deskPhone,
      'company_name': instance.companyName,
      'tax_identification_number': instance.taxIdentificationNumber,
      'website': instance.website,
      'annual_revenue': instance.annualRevenue,
      'estimated_quantity': instance.estimatedQuantity,
      'content': instance.content,
      'customer_kind': instance.customerKind,
      'addressing': instance.addressing,
      'source': instance.source,
      'levels_of_care': instance.levelsOfCare,
      'business_line': instance.businessLine,
      'company_size': instance.companySize,
      'customer_type': instance.customerType,
      'customer_class': instance.customerClass,
      'ranked': instance.ranked,
      'types_of_commodities': instance.typesOfCommodities,
      'services_group': instance.servicesGroup,
      'service': instance.service,
      'valued_added_service': instance.valuedAddedService,
      'sales_channel': instance.salesChannel,
      'delivery_direction': instance.deliveryDirection,
      'reject_call': instance.rejectCall,
      'reject_email': instance.rejectEmail,
      'birthday': instance.birthday,
    };
