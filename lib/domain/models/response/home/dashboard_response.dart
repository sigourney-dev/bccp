import 'package:json_annotation/json_annotation.dart';

part 'dashboard_response.g.dart';

@JsonSerializable()
class DashboardResponse {
  @JsonKey(name: 'lead_total')
  final int leadTotal;
  @JsonKey(name: 'account_total')
  final int accountTotal;
  @JsonKey(name: 'opportunity_total')
  final int opportunityTotal;

  const DashboardResponse({
    this.leadTotal = 0,
    this.accountTotal = 0,
    this.opportunityTotal = 0,
  });

  factory DashboardResponse.fromJson(Map<String, dynamic> json) =>
      _$DashboardResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DashboardResponseToJson(this);
}
