part of 'lead_detail_cubit.dart';

class LeadDetailState extends Equatable {
  final LoadStatus getDetail;
  final LeadDetailResponse? leadDetail;
  final String? getMessage;
  final bool isExtended;

  const LeadDetailState({
    this.getDetail = LoadStatus.initial,
    this.leadDetail,
    this.getMessage,
    this.isExtended = false,
  });

  LeadDetailState copyWith({
    LoadStatus? getDetail,
    LeadDetailResponse? leadDetail,
    String? getMessage,
    bool? isExtended,
  }) {
    return LeadDetailState(
      getDetail: getDetail ?? this.getDetail,
      leadDetail: leadDetail ?? this.leadDetail,
      getMessage: getMessage ?? this.getMessage,
      isExtended: isExtended ?? this.isExtended,
    );
  }

  @override
  List<Object?> get props => [
        getDetail,
        leadDetail,
        getMessage,
        isExtended,
      ];
}
