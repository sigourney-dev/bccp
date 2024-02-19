import 'package:json_annotation/json_annotation.dart';

part 'task_request.g.dart';

@JsonSerializable()
class TaskRequest {
  final int pageIndex;
  final int pageSize;
  @JsonKey(name: 'status_arr')
  final List<String> statusArr;
  @JsonKey(name: 'task_date')
  final String taskDate;

  const TaskRequest({
    this.pageIndex = 0,
    this.pageSize = 10,
    required this.statusArr,
    required this.taskDate,
  });

  factory TaskRequest.fromJson(Map<String, dynamic> json) =>
      _$TaskRequestFromJson(json);

  Map<String, dynamic> toJson() => _$TaskRequestToJson(this);
}
