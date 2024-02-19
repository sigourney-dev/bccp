// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TaskRequest _$TaskRequestFromJson(Map<String, dynamic> json) => TaskRequest(
      pageIndex: json['pageIndex'] as int? ?? 0,
      pageSize: json['pageSize'] as int? ?? 10,
      statusArr: (json['status_arr'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      taskDate: json['task_date'] as String,
    );

Map<String, dynamic> _$TaskRequestToJson(TaskRequest instance) =>
    <String, dynamic>{
      'pageIndex': instance.pageIndex,
      'pageSize': instance.pageSize,
      'status_arr': instance.statusArr,
      'task_date': instance.taskDate,
    };
