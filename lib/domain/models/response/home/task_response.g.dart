// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TaskResponse _$TaskResponseFromJson(Map<String, dynamic> json) => TaskResponse(
      id: json['id'] as int? ?? 0,
      elementableType: json['elementable_type'] as String? ?? '',
      elementableId: json['elementable_id'] as int? ?? 0,
      title: json['title'] as String? ?? '',
      status: json['status'] as String? ?? '',
      startTime: json['start_time'],
      endTime: json['end_time'],
      priority: json['priority'] as String? ?? '',
      description: json['description'] as String? ?? '',
      assignedId: json['assigned_id'] as int? ?? 0,
      contactId: json['contact_id'] as int? ?? 0,
    );

Map<String, dynamic> _$TaskResponseToJson(TaskResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'elementable_type': instance.elementableType,
      'elementable_id': instance.elementableId,
      'title': instance.title,
      'status': instance.status,
      'start_time': instance.startTime,
      'end_time': instance.endTime,
      'priority': instance.priority,
      'description': instance.description,
      'assigned_id': instance.assignedId,
      'contact_id': instance.contactId,
    };
