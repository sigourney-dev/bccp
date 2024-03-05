import 'package:bccp/application/enums/load_status.dart';
import 'package:bccp/domain/models/response/lead/lead_detail_response.dart';
import 'package:bccp/domain/repositories/lead_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../di.dart';

part 'lead_detail_state.dart';

class LeadDetailCubit extends Cubit<LeadDetailState> {
  LeadDetailCubit() : super(const LeadDetailState());

  final _leadRepository = getIt<LeadRepository>();

  void changeIsExtended(bool isExtended) {
    emit(state.copyWith(isExtended: isExtended));
  }

  Future<void> getLeadDetail(int id) async {
    emit(state.copyWith(getDetail: LoadStatus.loading));
    try {
      final response = await _leadRepository.getLeadDetail(id);
      if (response.isRight) {
        emit(state.copyWith(
          getDetail: LoadStatus.success,
          leadDetail: response.right,
        ));
      } else {
        emit(state.copyWith(getDetail: LoadStatus.failure));
      }
    } catch (error) {
      emit(state.copyWith(getDetail: LoadStatus.failure));
    }
  }
}
