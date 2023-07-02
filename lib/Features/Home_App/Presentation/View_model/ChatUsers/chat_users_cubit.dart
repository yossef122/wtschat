import 'package:bloc/bloc.dart';
import 'package:chatapp/Features/phone_authentication/data/Model/UserData.dart';
import 'package:chatapp/core/utils/Constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'chat_users_state.dart';

class ChatUsersCubit extends Cubit<ChatUsersState> {
  ChatUsersCubit() : super(ChatUsersInitial());

  static ChatUsersCubit get(context) => BlocProvider.of(context);


  List<UserData> allUsers = [];

  void getAllUsers() {
    if (allUsers.isEmpty) {
      emit(GetAllUsersLoadingState());
      FirebaseFirestore.instance.collection('users').get().then((value) {
        value.docs.forEach((element) {
          if (element.id != user!.uid) {
            // print(element.id);
            allUsers.add(UserData.fromJson(element.data()));
          }
        });

        emit(GetAllUsersSuccessState());
      }).catchError((error) {
        emit(GetAllUsersErrorState(error: error.toString()));
      });
    }
  }
}
