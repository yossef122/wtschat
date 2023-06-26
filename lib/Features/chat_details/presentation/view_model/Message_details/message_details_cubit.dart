import 'package:bloc/bloc.dart';
import 'package:chatapp/Features/chat_details/data/Model/ChatModel.dart';
import 'package:chatapp/core/utils/Constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'message_details_state.dart';

class MessageDetailsCubit extends Cubit<MessageDetailsState> {
  MessageDetailsCubit() : super(MessageDetailsInitial());

  //Chat Details Cubit

  void sendMessage({String? receiverId, String? text, String? dateTime}) {
    ChatModel chatModel = ChatModel(
        text: text,
        senderId: user!.uid,
        receiverId: receiverId,
        dateTime: dateTime);
    FirebaseFirestore.instance
        .collection('users')
        .doc(user!.uid)
        .collection('chats')
        .doc(receiverId)
        .collection('messages')
        .add(chatModel.toMap())
        .then((value) {
      emit(GetMessageSuccessState());
    }).catchError((error) {
      emit(GetMessageErrorState());
    });

    FirebaseFirestore.instance
        .collection('users')
        .doc(receiverId)
        .collection('chats')
        .doc(user!.uid)
        .collection('messages')
        .add(chatModel.toMap())
        .then((value) {
      emit(GetMessageSuccessState());
    }).catchError((error) {
      emit(GetMessageErrorState());
    });
  }

  List<ChatModel> messages = [];

  void getMessage({
    String? receiverId,
  }) {
    FirebaseFirestore.instance
        .collection('users')
        .doc(user!.uid)
        .collection('chats')
        .doc(receiverId)
        .collection('messages')
        .orderBy('dateTime')
        .snapshots()
        .listen((event) {
      messages = [];
      event.docs.forEach((element) {
        messages.add(ChatModel.fromJson(element.data()));
      });
      emit(GetAllMessageSuccessState());
    });
  }

}