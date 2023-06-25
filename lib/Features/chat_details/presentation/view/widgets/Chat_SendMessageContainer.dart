
import 'package:chatapp/Features/chat_details/presentation/view/widgets/chat_SendMessageTextFormField.dart';
import 'package:chatapp/Features/chat_details/presentation/view_model/emojiChange/emoji_change_cubit.dart';
import 'package:chatapp/core/utils/Constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';


//ناقص responsive

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
                      },
                      icon: Icon(
                        Icons.emoji_emotions_outlined,
                        color:
                            showEmojiPicker == true ? Colors.blue : Colors.grey,
                      ),
                    ),
                    SendMessageTextFormField(
                      textFormFieldController: textFormFieldController,
                    ),
                    IconButton(
                      onPressed: () {
                        showModalBottomSheet(
                          backgroundColor: Colors.transparent,
                          context: context,
                          builder: (builder) => const AttachmentContainer(),
                        );
                      },
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

class AttachmentContainer extends StatelessWidget {
  const AttachmentContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 270,
      width: MediaQuery.of(context).size.width,
      child: Card(
        margin: const EdgeInsets.all(20),
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  AttachmentItem(
                    iconData: Icons.insert_drive_file,
                    text: 'Document',
                    materialAccentColor: Colors.deepPurpleAccent,
                    materialColor: null,
                  ),
                  AttachmentItem(
                    iconData: Icons.camera_alt,
                    text: 'Camera',
                    materialColor: Colors.pink,
                    materialAccentColor: null,
                  ),
                  AttachmentItem(
                    iconData: Icons.insert_photo_rounded,
                    text: 'Gallery',
                    materialColor: Colors.purple,
                    materialAccentColor: null,
                  ),
                ],
              ),
              Row(
                children: [
                  AttachmentItem(
                    iconData: Icons.insert_drive_file,
                    text: 'Audio',
                    materialAccentColor: null,
                    materialColor: Colors.orange,
                  ),
                  AttachmentItem(
                    iconData: Icons.location_on,
                    text: 'Location',
                    materialColor: Colors.pink,
                    materialAccentColor: null,
                  ),
                  AttachmentItem(
                    iconData: Icons.person,
                    text: 'Contacts',
                    materialColor: Colors.blue,
                    materialAccentColor: null,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class AttachmentItem extends StatelessWidget {
  AttachmentItem({
    Key? key,
    required this.iconData,
    required this.text,
    required this.materialAccentColor,
    required this.materialColor,
  }) : super(key: key);
  IconData? iconData;
  String? text;
  MaterialAccentColor? materialAccentColor;
  MaterialColor? materialColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(right: 20, top: 20, left: 30),
        child: Column(
          children: [
            CircleAvatar(
              backgroundColor: materialColor ?? materialAccentColor,
              radius: 30,
              child: Icon(
                iconData,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              text!,
              style: const TextStyle(fontSize: 13),
            ),
            const SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
