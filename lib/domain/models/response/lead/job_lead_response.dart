import 'package:json_annotation/json_annotation.dart';

part 'job_lead_response.g.dart';

@JsonSerializable()
class JobHomeResponse {
  final String type;
  @JsonKey(name: 'elementable_type')
  final String elementableType;
  @JsonKey(name: 'elementable_id')
  final double elementableId;
  final double id;
  final String title;
  final String status;
  @JsonKey(name: 'start_time')
  final String startTime;
  @JsonKey(name: 'end_time')
  final String endTime;
  final String description;
  @JsonKey(name: 'created_at')
  final String createdAt;
  @JsonKey(name: 'related_name')
  final String relatedName;

  const JobHomeResponse({
    this.type = '',
    this.elementableType = '',
    this.elementableId = 0,
    this.id = 0,
    this.title = '',
    this.status = '',
    this.startTime = '',
    this.endTime = '',
    this.description = '',
    this.createdAt = '',
    this.relatedName = '',
  });

  factory JobHomeResponse.fromJson(Map<String, dynamic> json) =>
      _$JobHomeResponseFromJson(json);

  Map<String, dynamic> toJson() => _$JobHomeResponseToJson(this);
}
