part of 'message_details_cubit.dart';

@immutable
abstract class MessageDetailsState {}

class MessageDetailsInitial extends MessageDetailsState {}

class GetMessageSuccessState extends MessageDetailsState {}

class GetMessageErrorState extends MessageDetailsState {}

class GetAllMessageSuccessState extends MessageDetailsState {}
