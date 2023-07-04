// ignore_for_file: must_be_immutable

import 'package:chatapp/Features/chat_details/presentation/view/widgets/Chat_EmojiPickerWidget.dart';
import 'package:chatapp/Features/chat_details/presentation/view/widgets/Chat_SendMessageContainer.dart';
import 'package:chatapp/Features/chat_details/presentation/view_model/emojiChange/chat_cubit.dart';
import 'package:chatapp/core/styles/colors.dart';
import 'package:chatapp/core/utils/Constants.dart';
import 'package:chatapp/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatSendMessage extends StatelessWidget {
  ChatSendMessage({Key? key, required this.receiverId}) : super(key: key);
  String? receiverId;
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return BlocConsumer<ChatCubit, ChatState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Container(
          height: showEmojiPicker ? height * .37 : height * .07,
          decoration: const BoxDecoration(
              image:
                  DecorationImage(image: AssetImage(AppImage.wtsBackground))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SendMessageContainer(
                    textFormFieldController: textEditingController,
                  ),
                  const Spacer(),
                  textEditingController.hasListeners != true
                      ? CircleAvatar(
                          radius: width * .058,
                          backgroundColor: defualtColor3(),
                          child: IconButton(
                            onPressed: () {
                              // EmojiPickerWidget();
                            },
                            icon: const Icon(
                              Icons.mic,
                              color: Colors.grey,
                            ),
                          ),
                        )
                      : CircleAvatar(
                          radius: width * .058,
                          backgroundColor: defualtColor3(),
                          child: IconButton(
                            onPressed: () {
                              ChatCubit.get(context).sendMessage(
                                  receiverId: receiverId,
                                  text: textEditingController.text,
                                  dateTime: DateTime.now().toString());
                            },
                            icon: const Icon(
                              Icons.send,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                ],
              ),
              showEmojiPicker == true
                  ? EmojiPickerWidget(
                      textEditionController: textEditingController,
                    )
                  : Container()
            ],
          ),
        );
      },
    );
  }
}
