import 'package:chatapp/Features/chat_details/presentation/view/widgets/Chat_Appbar.dart';
import 'package:chatapp/Features/chat_details/presentation/view/widgets/Chat_MessagesList.dart';
import 'package:chatapp/Features/chat_details/presentation/view/widgets/Chat_SendMessage.dart';
import 'package:chatapp/Features/chat_details/presentation/view_model/emojiChange/chat_cubit.dart';
import 'package:chatapp/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatDetailsScreenBody extends StatelessWidget {
  const ChatDetailsScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ChatCubitCubit>(
          create: (context) => ChatCubitCubit(),
        ),
      ],
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImage.wtsBackground),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: [
            const ChatAppbar(),
            const Spacer(),
            SingleChildScrollView(
              child: Column(
                children: [
                  const ChatMessagesList(),
                  ChatSendMessage(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
