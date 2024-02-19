// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DashboardResponse _$DashboardResponseFromJson(Map<String, dynamic> json) =>
    DashboardResponse(
      leadTotal: json['lead_total'] as int? ?? 0,
      accountTotal: json['account_total'] as int? ?? 0,
      opportunityTotal: json['opportunity_total'] as int? ?? 0,
    );

Map<String, dynamic> _$DashboardResponseToJson(DashboardResponse instance) =>
    <String, dynamic>{
      'lead_total': instance.leadTotal,
      'account_total': instance.accountTotal,
      'opportunity_total': instance.opportunityTotal,
    };
