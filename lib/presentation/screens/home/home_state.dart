part of 'home_cubit.dart';

class HomeState extends Equatable {
  final int leadTotal;
  final int accountTotal;
  final int opportunityTotal;
  final LoadStatus dashboardStatus;
  final String dashboardMessage;
  final LoadStatus taskStatus;
  final List<TaskResponse> listTasks;

  const HomeState({
    this.leadTotal = 0,
    this.accountTotal = 0,
    this.opportunityTotal = 0,
    this.dashboardStatus = LoadStatus.initial,
    this.dashboardMessage = '',
    this.taskStatus = LoadStatus.initial,
    this.listTasks = const [],
  });

  HomeState copyWith({
    int? leadTotal,
    int? accountTotal,
    int? opportunityTotal,
    LoadStatus? dashboardStatus,
    String? dashboardMessage,
    List<TaskResponse>? listTasks,
    LoadStatus? taskStatus,
  }) {
    return HomeState(
      leadTotal: leadTotal ?? this.leadTotal,
      accountTotal: accountTotal ?? this.accountTotal,
      opportunityTotal: opportunityTotal ?? this.opportunityTotal,
      dashboardStatus: dashboardStatus ?? this.dashboardStatus,
      dashboardMessage: dashboardMessage ?? this.dashboardMessage,
      listTasks: listTasks ?? this.listTasks,
      taskStatus: taskStatus ?? this.taskStatus,
    );
  }

  @override
  List<Object?> get props => [
        leadTotal,
        accountTotal,
        opportunityTotal,
        dashboardStatus,
        dashboardMessage,
        listTasks,
        taskStatus,
      ];
}
