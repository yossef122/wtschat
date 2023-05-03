import 'package:chatapp/Features/chat_details/presentation/view_model/emojiChange/emoji_change_cubit.dart';
import 'package:chatapp/core/utils/Constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SendMessageTextFormField extends StatelessWidget {
  SendMessageTextFormField({Key? key, required this.textFormFieldController})
      : super(key: key);
  TextEditingController textFormFieldController;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return SizedBox(
      width: width * .5,
      // height: 100,
      child: BlocBuilder<EmojiChangeCubit, EmojiChangeState>(

        builder: (context, state) {
        var cubit=EmojiChangeCubit.get(context);
          return TextFormField(

            onTap: () {
              if(showEmojiPicker==true) {
                cubit.emojiChange(showEmojiPicker);
              }
              cubit.keyboardChange(focusNode);
            },
            focusNode: focusNode,
            controller: textFormFieldController,
            style: const TextStyle(
              color: Colors.black,
              letterSpacing: 2,

            ),
            maxLines: 10,
            minLines: 1,
            // autofocus: true,
            decoration: const InputDecoration(
              border: InputBorder.none,
              hintText: 'Message',
              hintStyle: TextStyle(
                color: Colors.black,
              ),
            ),
            cursorColor: Colors.black,
            keyboardType: TextInputType.multiline,
            validator: (String? value) {
              if (value!.isEmpty) {
                return 'phone must\'t empty';
              } else if (value.length > 11) {
                return 'phone is too short';
              }
              return null;
            },
            onSaved: (value) {},
          );
        },
      ),
    );
  }
}
