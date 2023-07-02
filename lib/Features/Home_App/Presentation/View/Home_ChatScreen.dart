import 'package:chatapp/Features/Home_App/Presentation/View/Widget/List_HomeChat.dart';
import 'package:chatapp/Features/Home_App/Presentation/View_model/ChatUsers/chat_users_cubit.dart';
import 'package:chatapp/core/utils/WebService_locator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ChatUsersCubit>.value(
      value: getIt.get<ChatUsersCubit>(),
      child: const ListViewOfHomeChat(),
    );
  }
}
