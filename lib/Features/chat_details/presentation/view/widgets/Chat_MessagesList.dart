import 'package:chatapp/Features/chat_details/presentation/view/widgets/Chat_MessagesContent.dart';
import 'package:chatapp/Features/chat_details/presentation/view_model/emojiChange/emoji_change_cubit.dart';
import 'package:chatapp/Features/chat_details/presentation/view_model/emojiChange/emoji_change_cubit.dart';
import 'package:chatapp/core/utils/Constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatMessagesList extends StatelessWidget {
  const ChatMessagesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery
        .of(context)
        .size
        .height;

    return BlocBuilder<EmojiChangeCubit, EmojiChangeState>(
      builder: (context, state) {
        return SizedBox(
          height: showEmojiPicker ||focusNode.hasFocus ? height * .48 : height * .8,
          // height: height * .8,
          child: ListView.separated(
            shrinkWrap: true,
            padding: const EdgeInsets.only(bottom: 5),
            itemBuilder: (context, index) {
              return const ChatMessagesContent();
            },
            separatorBuilder: (context, index) {
              return const SizedBox(
                height: 10,
              );
            },
            itemCount: 20,
          ),
        );
      },
    );
  }
}
