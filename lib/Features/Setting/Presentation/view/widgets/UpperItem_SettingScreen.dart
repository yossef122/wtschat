import 'package:chatapp/Features/Home_App/Presentation/View_model/ChatUsers/chat_users_cubit.dart';
import 'package:chatapp/Features/Profile_photo/presentation/view/Profile_photo_screen.dart';
import 'package:chatapp/Features/phone_authentication/presentation/view_model/SignIn_CloudFireStore/sign_user_cubit.dart';
import 'package:chatapp/core/styles/colors.dart';
import 'package:chatapp/core/utils/assets.dart';
import 'package:chatapp/core/utils/functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UpperItemSettingScreen extends StatelessWidget {
  const UpperItemSettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return BlocConsumer<SignUserCubit, SignUserState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = SignUserCubit.get(context);

        return GestureDetector(
          onTap: () {
            navigator(
                context,
                ProfilePhotoScreen(
                  userData: cubit.userData!,
                ));
          },
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: height * .02, left: width * .05),
                child: SizedBox(
                  height: height * .13,
                  child: CircleAvatar(
                    radius: height * .06,
                    backgroundImage: cubit.userData!.personalPhoto == null
                        ? const AssetImage(AppImage.chatPhoto)
                        : NetworkImage(cubit.userData!.personalPhoto!)
                            as ImageProvider,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: height * .02, left: width * .05),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      cubit.userData!.name!,
                      style: TextStyle(
                          fontSize: height * .028,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      cubit.userData!.bio ?? 'Hey there! I am using WhatsA...',
                      style: TextStyle(
                          fontSize: height * .018, color: Colors.grey[700]),
                    )
                  ],
                ),
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.qr_code,
                  color: defualtColor2(),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
