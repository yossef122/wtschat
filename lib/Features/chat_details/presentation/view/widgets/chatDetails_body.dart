import 'package:chatapp/Features/chat_details/presentation/view/widgets/Chat_Appbar.dart';
import 'package:chatapp/Features/chat_details/presentation/view/widgets/Chat_MessagesList.dart';
import 'package:chatapp/Features/chat_details/presentation/view/widgets/Chat_SendMessage.dart';
import 'package:chatapp/Features/chat_details/presentation/view_model/emojiChange/chat_cubit.dart';
import 'package:chatapp/core/utils/WebService_locator.dart';
import 'package:chatapp/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatDetailsScreenBody extends StatelessWidget {
   ChatDetailsScreenBody({Key? key, required this.receiverId,required this.receiverName})
      : super(key: key);
  String? receiverId;
  String? receiverName;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ChatCubit>.value(value: getIt.get<ChatCubit>()),

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
            ChatAppbar(receiverName:receiverName,),
            const Spacer(),
            SingleChildScrollView(
              child: Column(
                children: [
                  ChatMessagesList(receiverId: receiverId,),
                  ChatSendMessage(receiverId: receiverId,),
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
