part of 'phone_auth_cubit.dart';

@immutable
abstract class PhoneAuthState {}

class PhoneAuthInitial extends PhoneAuthState {}

class PhoneAuthLoadingState extends PhoneAuthState {}

class PhoneAuthSuccessState extends PhoneAuthState {}

class PhoneAuthErrorState extends PhoneAuthState {
  final String message;

  PhoneAuthErrorState(this.message);

}

class PhoneAuthVerifiedState extends PhoneAuthState {}

class ChangeOtpState extends PhoneAuthState {}
