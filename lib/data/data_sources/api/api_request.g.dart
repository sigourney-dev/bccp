// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchByFieldsRequest _$SearchByFieldsRequestFromJson(
        Map<String, dynamic> json) =>
    SearchByFieldsRequest(
      searchFieldName: json['searchFieldName'] as String,
      searchValue: json['searchValue'],
    );

Map<String, dynamic> _$SearchByFieldsRequestToJson(
        SearchByFieldsRequest instance) =>
    <String, dynamic>{
      'searchFieldName': instance.searchFieldName,
      'searchValue': instance.searchValue,
    };
