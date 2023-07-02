part of 'chat_cubit.dart';

@immutable
abstract class EmojiChangeState {}

class EmojiChangeInitial extends EmojiChangeState {}

class EmojiChangeStateSuccess extends EmojiChangeState {}

class SendMessageSuccessState extends EmojiChangeState {}

class SendMessageErrorState extends EmojiChangeState {}

class GetAllMessageSuccessState extends EmojiChangeState {}
