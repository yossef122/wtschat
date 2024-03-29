import 'package:chatapp/Features/chat_details/presentation/view/widgets/Chat_Appbar.dart';
import 'package:chatapp/Features/chat_details/presentation/view/widgets/Chat_MessagesList.dart';
import 'package:chatapp/Features/chat_details/presentation/view/widgets/Chat_SendMessage.dart';
import 'package:chatapp/Features/chat_details/presentation/view_model/emojiChange/chat_cubit.dart';
import 'package:chatapp/Features/phone_authentication/data/Model/UserData.dart';
import 'package:chatapp/core/utils/WebService_locator.dart';
import 'package:chatapp/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatDetailsScreenBody extends StatelessWidget {
   ChatDetailsScreenBody({Key? key, required this.receiverData/*,required this.receiverName*/})
      : super(key: key);
  // String? receiverId;
  // String? receiverName;
   UserData? receiverData;

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
            ChatAppbar(/*receiverName:receiverData!.name,*/ receiverData: receiverData,),
            const Spacer(),
            SingleChildScrollView(
              child: Column(
                children: [
                  ChatMessagesList(receiverId: receiverData!.uId,),
                  ChatSendMessage(receiverId: receiverData!.uId,),
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
