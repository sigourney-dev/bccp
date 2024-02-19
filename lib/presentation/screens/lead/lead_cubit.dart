import 'package:bccp/application/enums/load_status.dart';
import 'package:bccp/domain/repositories/lead_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../di.dart';
import '../../../domain/models/response/lead/lead_response.dart';

part 'lead_state.dart';

class LeadCubit extends Cubit<LeadState> {
  LeadCubit() : super(const LeadState());

  final _leadRepository = getIt<LeadRepository>();

  Future<void> getListLeads(int pageIndex, int pageSize) async {
    emit(state.copyWith(leadStatus: LoadStatus.loading));
    try {
      final response = await _leadRepository.getListLeads(pageIndex, pageSize);
      if (response.isRight) {
        emit(state.copyWith(
          leadStatus: LoadStatus.success,
          listLeads: response.right,
        ));
      } else {
        emit(state.copyWith(leadStatus: LoadStatus.failure));
      }
    } catch (error) {
      emit(state.copyWith(leadStatus: LoadStatus.failure));
    }
  }
}
