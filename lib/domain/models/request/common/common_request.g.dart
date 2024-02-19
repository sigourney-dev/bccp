// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommonRequest _$CommonRequestFromJson(Map<String, dynamic> json) =>
    CommonRequest(
      pageSize: json['pageSize'] as int? ?? 1,
      pageIndex: json['pageIndex'] as int? ?? 10,
    );

Map<String, dynamic> _$CommonRequestToJson(CommonRequest instance) =>
    <String, dynamic>{
      'pageIndex': instance.pageIndex,
      'pageSize': instance.pageSize,
    };
