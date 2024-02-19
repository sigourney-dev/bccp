part of 'lead_cubit.dart';

class LeadState extends Equatable {
  final List<LeadResponse> listLeads;
  final LoadStatus leadStatus;

  const LeadState({
    this.listLeads = const [],
    this.leadStatus = LoadStatus.initial,
  });

  LeadState copyWith({
    List<LeadResponse>? listLeads,
    LoadStatus? leadStatus,
  }) {
    return LeadState(
      listLeads: listLeads ?? this.listLeads,
      leadStatus: leadStatus ?? this.leadStatus,
    );
  }

  @override
  List<Object?> get props => [
        listLeads,
        leadStatus,
      ];
}
