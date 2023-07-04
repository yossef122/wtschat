part of 'chat_cubit.dart';

@immutable
abstract class ChatState {}

class EmojiChangeInitial extends ChatState {}

class EmojiChangeStateSuccess extends ChatState {}

class SendMessageSuccessState extends ChatState {}

class SendMessageErrorState extends ChatState {}

class GetAllMessageSuccessState extends ChatState {}
