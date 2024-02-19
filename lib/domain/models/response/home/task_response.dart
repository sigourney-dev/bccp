import 'package:json_annotation/json_annotation.dart';

part 'task_response.g.dart';

@JsonSerializable()
class TaskResponse {
  final int id;
  @JsonKey(name: 'elementable_type')
  final String elementableType;
  @JsonKey(name: 'elementable_id')
  final int elementableId;
  final String title;
  final String status;
  @JsonKey(name: 'start_time')
  final dynamic startTime;
  @JsonKey(name: 'end_time')
  final dynamic endTime;
  final String priority;
  final String description;
  @JsonKey(name: 'assigned_id')
  final int assignedId;
  @JsonKey(name: 'contact_id')
  final int contactId;

  const TaskResponse({
    this.id = 0,
    this.elementableType = '',
    this.elementableId = 0,
    this.title = '',
    this.status = '',
    this.startTime,
    this.endTime,
    this.priority = '',
    this.description = '',
    this.assignedId = 0,
    this.contactId = 0,
  });

  factory TaskResponse.fromJson(Map<String, dynamic> json) =>
      _$TaskResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TaskResponseToJson(this);
}
