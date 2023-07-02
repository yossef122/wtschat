part of 'chat_users_cubit.dart';

@immutable
abstract class ChatUsersState {}

class ChatUsersInitial extends ChatUsersState {}

class GetAllUsersLoadingState extends ChatUsersState {}

class GetAllUsersSuccessState extends ChatUsersState {}

class GetAllUsersErrorState extends ChatUsersState {
  final String error;
  GetAllUsersErrorState({
    required this.error
});
}
