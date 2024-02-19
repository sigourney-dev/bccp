import 'package:json_annotation/json_annotation.dart';

part 'common_request.g.dart';

@JsonSerializable()
class CommonRequest {
  final int pageIndex;
  final int pageSize;
  const CommonRequest({
    this.pageSize = 1,
    this.pageIndex = 10,
  });

  factory CommonRequest.fromJson(Map<String, dynamic> json) =>
      _$CommonRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CommonRequestToJson(this);
}
