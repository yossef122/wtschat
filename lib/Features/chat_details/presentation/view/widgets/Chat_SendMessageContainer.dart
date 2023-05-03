import 'package:chatapp/Features/chat_details/presentation/view/widgets/chat_SendMessageTextFormField.dart';
import 'package:chatapp/Features/chat_details/presentation/view_model/emojiChange/emoji_change_cubit.dart';
import 'package:chatapp/core/utils/Constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

// ignore: must_be_immutable
class SendMessageContainer extends StatelessWidget {
  SendMessageContainer({Key? key, required this.textFormFieldController})
      : super(key: key);

  TextEditingController textFormFieldController;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return BlocBuilder<EmojiChangeCubit, EmojiChangeState>(
      builder: (context, state) {
        var cubit = EmojiChangeCubit.get(context);
        return WillPopScope(
          onWillPop: () {
            if (showEmojiPicker == true) {
              cubit.emojiChange(showEmojiPicker);
            } else {
              GoRouter.of(context).pop();
            }
            return Future.value(false);
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: width * .88,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 1,
                      color: Colors.grey[200]!,
                    ),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {
                        focusNode.unfocus();
                        focusNode.canRequestFocus = false;
                        // cubit.emojiChange(!(showEmojiPicker));
                        cubit.emojiChange(showEmojiPicker);
                        cubit.keyboardChange(focusNode);
                        print(showEmojiPicker);
                      },
                      icon:  Icon(
                        Icons.emoji_emotions_outlined,
                        color: showEmojiPicker==true?Colors.blue:Colors.grey,
                      ),
                    ),
                    SendMessageTextFormField(
                      textFormFieldController: textFormFieldController,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.attach_file_outlined,
                        color: Colors.grey,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.camera_alt,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
