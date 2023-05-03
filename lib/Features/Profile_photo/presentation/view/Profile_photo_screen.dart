import 'package:chatapp/Features/Profile_photo/presentation/view/widgets/Profile_photo_screen_body.dart';
import 'package:chatapp/core/styles/colors.dart';
import 'package:flutter/material.dart';

class ProfilePhotoScreen extends StatelessWidget {
  const ProfilePhotoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: defualtColor1(),
        title: const Text('profile'),
      ),
      body: const ProfilePhotoScreenBody(),
    );
  }
}
