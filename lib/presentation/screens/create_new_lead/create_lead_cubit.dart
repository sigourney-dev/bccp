import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'create_lead_state.dart';

class CreateLeadCubit extends Cubit<CreateLeadState> {
  CreateLeadCubit() : super(const CreateLeadState());

  void onChangeRejectEmail(bool isRejectEmail) {
    emit(state.copyWith(isRejectEmail: isRejectEmail));
  }

  void onChangeRejectCall(bool isRejectCall) {
    emit(state.copyWith(isRejectCall: isRejectCall));
  }

  void onChangeExtend(bool isExtended) {
    emit(state.copyWith(isExtended: isExtended));
  }
}
