import 'package:chatapp/Features/Home_App/Presentation/View_model/Home/home_cubit.dart';
import 'package:flutter/material.dart';

class IconUploadStory extends StatelessWidget {
  const IconUploadStory({
    super.key,
    required this.cubit,
    required this.textController,
  });
  final HomeCubit cubit;
  final TextEditingController textController;
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          cubit.createStory(
            text: textController.text,
            photo: cubit.storyImageUrl,
            dateTime: DateTime.now().toString(),
          );
        },
        icon: const Icon(
          Icons.telegram_rounded,
          color: Colors.white,
        ));
  }
}
