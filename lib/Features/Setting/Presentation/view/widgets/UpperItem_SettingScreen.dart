import 'package:chatapp/Features/Profile_photo/presentation/view/Profile_photo_screen.dart';
import 'package:chatapp/core/styles/colors.dart';
import 'package:chatapp/core/utils/Routing.dart';
import 'package:chatapp/core/utils/assets.dart';
import 'package:chatapp/core/utils/functions.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class UpperItemSettingScreen extends StatelessWidget {
  const UpperItemSettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery
        .of(context)
        .size
        .height;
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return GestureDetector(
      onTap: (){
        navigator(context, const ProfilePhotoScreen());

        // GoRouter.of(context).push(RouterBuild.kProfilePhotoScreen);
      },
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(top: height * .02, left: width * .05),
            child: SizedBox(
              height: height * .13,
              child: CircleAvatar(
                radius: height * .06,
                backgroundImage: const AssetImage(AppImage.chatPhoto),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: height * .02, left: width * .05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'joe',
                  style: TextStyle(
                      fontSize: height * .028,
                      color: Colors.black,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Hey there! I am using WhatsA...',
                  style: TextStyle(
                      fontSize: height * .018, color: Colors.grey[700]),
                )
              ],
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.qr_code,
                color: defualtColor2(),
              ))
        ],
      ),
    );
  }
}
