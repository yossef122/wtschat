import 'package:chatapp/Features/chat_details/presentation/view/widgets/Chat_MessagesContent.dart';
import 'package:chatapp/Features/chat_details/presentation/view_model/emojiChange/chat_cubit.dart';
import 'package:chatapp/Features/chat_details/presentation/view_model/emojiChange/chat_cubit.dart';
import 'package:chatapp/core/utils/Constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatMessagesList extends StatelessWidget {
  ChatMessagesList({Key? key, required this.receiverId}) : super(key: key);
  String? receiverId;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return BlocBuilder<ChatCubit, ChatState>(
      builder: (context, state) {
        return SizedBox(
          height: showEmojiPicker || focusNode.hasFocus
              ? height * .48
              : height * .8,
          // height: height * .8,
          child: ListView.separated(
            shrinkWrap: true,
            padding: const EdgeInsets.only(bottom: 5),
            itemBuilder: (context, index) {
              return  ChatMessagesContent(receiverId: receiverId, chatModel: ChatCubit.get(context).messages[index],);
            },
            separatorBuilder: (context, index) {
              return const SizedBox(
                height: 10,
              );
            },
            itemCount: ChatCubit.get(context).messages.length,
          ),
        );
      },
    );
  }
}
