// ignore_for_file: camel_case_types, must_be_immutable

import 'package:chatapp/Features/Home_App/Presentation/View/HomeScreen.dart';
import 'package:chatapp/Features/phone_authentication/presentation/view_model/SignIn_CloudFireStore/sign_user_cubit.dart';
import 'package:chatapp/core/styles/colors.dart';
import 'package:chatapp/core/utils/Constants.dart';

// import 'package:chatapp/core/utils/Routing.dart';
import 'package:chatapp/core/utils/assets.dart';
import 'package:chatapp/core/utils/functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:go_router/go_router.dart';

class profileScreenBody extends StatelessWidget {
  profileScreenBody({Key? key}) : super(key: key);

  var nameController = TextEditingController();
  var bioController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var cubit = SignUserCubit.get(context);

    return BlocConsumer<SignUserCubit, SignUserState>(
      listener: (context, state) {
        if (state is UserCreateSuccessStates) {
          // GoRouter.of(context).push(RouterBuild.kHomeScreen);
          navigator(context, const HomeScreen());
        }
      },
      builder: (context, state) {
        return Form(
          key: formKey,
          child: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Column(
              children: [
                const ChangeProfilePhoto(),
                const SizedBox(
                  height: 10,
                ),
                EditProfile(
                  icon: Icons.person_outline,
                  upperText: "name",
                  controller: nameController,
                ),
                EditProfile(
                  icon: Icons.info_outline,
                  upperText: "bio",
                  controller: bioController,
                ),
                const SizedBox(
                  height: 20,
                ),
                OutlinedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.black)),
                  onPressed: () {
                    formKey.currentState!.save();

                    if (formKey.currentState!.validate()) {
                      SignUserCubit.get(context).insertUserData(
                          name: nameController.text,
                          photo: cubit.userImageUrl??AppImage.noPhoto,
                          uId: user!.uid,
                          phone: phoneNumber!,
                          bio: bioController.text.isEmpty
                              ? "الحمدلله علي كل شئ"
                              : bioController.text);
                    }
                  },
                  child: const Text(
                    "Save",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

class ChangeProfilePhoto extends StatelessWidget {
  const ChangeProfilePhoto({Key? key}) : super(key: key);

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
    var cubit = SignUserCubit.get(context);
    return BlocConsumer<SignUserCubit, SignUserState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.only(top: height * .05, left: width * .07),
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              SizedBox(
                height: height * .2,
                child: CircleAvatar(
                  radius: width * .2,
                  backgroundImage: SignUserCubit
                      .get(context)
                      .userImageUrl != null ? NetworkImage(SignUserCubit.get(context).userImageUrl!) as ImageProvider: const AssetImage(AppImage.noPhoto),
                ),
              ),
              CircleAvatar(
                  backgroundColor: defualtColor2(),
                  radius: height * .03,
                  child: IconButton(
                    onPressed: () {
                      cubit.userImage();
                    },
                    icon: const Icon(
                      Icons.camera_alt,
                      color: Colors.white,
                    ),
                  ))
            ],
          ),
        );
      },
    );
  }
}

class EditProfile extends StatelessWidget {
  EditProfile({
    Key? key,
    required this.icon,
    required this.upperText,
    required this.controller,
  }) : super(key: key);

  final IconData? icon;
  final String? upperText;
  TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return Padding(
      padding: EdgeInsets.only(
          top: width * .05, left: width * .07, right: width * .05),
      child: Column(
        children: [
          TextFormField(
              controller: controller,
              decoration: InputDecoration(
                prefixIcon: Icon(icon),
                labelText: upperText,
                hintText: "enter your $upperText",
              ),
              validator: (value) {
                if (upperText == "name") {
                  if (value!.isEmpty) {
                    return 'Please enter your $upperText';
                  }
                  return null;
                }
                return null;
              }),
        ],
      ),
    );
  }
}
