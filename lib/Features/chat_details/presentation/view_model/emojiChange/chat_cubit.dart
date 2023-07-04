import 'package:bloc/bloc.dart';
import 'package:chatapp/Features/chat_details/data/Model/ChatModel.dart';
import 'package:chatapp/core/utils/Constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'chat_state.dart';

class ChatCubit extends Cubit<ChatState> {
  ChatCubit() : super(EmojiChangeInitial());

  static ChatCubit get(context) => BlocProvider.of(context);

  emojiChange(bool emojiPicker) {
    if (emojiPicker == true) {
      showEmojiPicker = false;
    } else {
      showEmojiPicker = true;
    }
    // showEmojiPicker = !EmojiPicker;
    emit(EmojiChangeStateSuccess());
  }

  keyboardChange(FocusNode focusNode) {
    if (focusNode.hasFocus) {
      showKeyboard = true;
    } else {
      showKeyboard = false;
    }
    // showEmojiPicker = !EmojiPicker;
    emit(EmojiChangeStateSuccess());
  }



  /**/
  void sendMessage(
      {required String? receiverId,
        required String? text,
        required String? dateTime}) {
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
      emit(SendMessageSuccessState());
    }).catchError((error) {
      emit(SendMessageErrorState());
    });

    FirebaseFirestore.instance
        .collection('users')
        .doc(receiverId)
        .collection('chats')
        .doc(user!.uid)
        .collection('messages')
        .add(chatModel.toMap())
        .then((value) {
      emit(SendMessageSuccessState());
    }).catchError((error) {
      emit(SendMessageErrorState());
    });
  }

  List<ChatModel> messages = [];

  void getMessage({
   required String? receiverId,
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
