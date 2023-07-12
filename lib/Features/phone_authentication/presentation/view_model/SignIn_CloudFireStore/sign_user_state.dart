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

class PickedUserImageSuccessState extends SignUserState {}

class PickedUserImageErrorState extends SignUserState {}

class UploadUserLoadingState extends SignUserState {}

class UploadUserSuccessState extends SignUserState {}

class UploadUserErrorState extends SignUserState {}

class UploadUserErrorState2 extends SignUserState {}
class GetAllUsersLoadingState extends SignUserState {}
class GetAllUsersSuccessState extends SignUserState {}
class GetAllUsersErrorState extends SignUserState {
  final String error;

  GetAllUsersErrorState(this.error);
}
