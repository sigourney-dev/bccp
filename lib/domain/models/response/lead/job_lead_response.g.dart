// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_lead_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JobHomeResponse _$JobHomeResponseFromJson(Map<String, dynamic> json) =>
    JobHomeResponse(
      type: json['type'] as String? ?? '',
      elementableType: json['elementable_type'] as String? ?? '',
      elementableId: (json['elementable_id'] as num?)?.toDouble() ?? 0,
      id: (json['id'] as num?)?.toDouble() ?? 0,
      title: json['title'] as String? ?? '',
      status: json['status'] as String? ?? '',
      startTime: json['start_time'] as String? ?? '',
      endTime: json['end_time'] as String? ?? '',
      description: json['description'] as String? ?? '',
      createdAt: json['created_at'] as String? ?? '',
      relatedName: json['related_name'] as String? ?? '',
    );

Map<String, dynamic> _$JobHomeResponseToJson(JobHomeResponse instance) =>
    <String, dynamic>{
      'type': instance.type,
      'elementable_type': instance.elementableType,
      'elementable_id': instance.elementableId,
      'id': instance.id,
      'title': instance.title,
      'status': instance.status,
      'start_time': instance.startTime,
      'end_time': instance.endTime,
      'description': instance.description,
      'created_at': instance.createdAt,
      'related_name': instance.relatedName,
    };
