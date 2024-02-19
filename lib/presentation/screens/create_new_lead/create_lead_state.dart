part of 'create_lead_cubit.dart';

class CreateLeadState extends Equatable {
  final String customerName;
  final String email;
  final String phone;
  final bool isExtended;
  final bool isRejectEmail;
  final bool isRejectCall;

  const CreateLeadState({
    this.customerName = '',
    this.email = '',
    this.phone = '',
    this.isExtended = false,
    this.isRejectCall = false,
    this.isRejectEmail = false,
  });

  CreateLeadState copyWith({
    String? customerName,
    String? email,
    String? phone,
    bool? isExtended,
    bool? isRejectCall,
    bool? isRejectEmail,
  }) {
    return CreateLeadState(
      customerName: customerName ?? this.customerName,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      isExtended: isExtended ?? this.isExtended,
      isRejectCall: isRejectCall ?? this.isRejectCall,
      isRejectEmail: isRejectEmail ?? this.isRejectEmail,
    );
  }

  @override
  List<Object?> get props => [
        customerName,
        email,
        phone,
        isExtended,
        isRejectCall,
        isRejectEmail,
      ];
}
