part of 'sign_user_cubit.dart';

abstract class SignUserState {}

class SignUserInitial extends SignUserState {}

abstract class login_states {}

class UserCreateLoadingStates extends SignUserState {}

class UserCreateSuccessStates extends SignUserState {}

class UserCreateErrorStates extends SignUserState {
  final String error;

  UserCreateErrorStates(this.error);
}
