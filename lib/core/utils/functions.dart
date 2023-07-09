import 'package:chatapp/Features/Home_App/Presentation/View/Widget/smooth_indecator.dart';
import 'package:chatapp/Features/Home_App/Presentation/View_model/Home/home_cubit.dart';
import 'package:chatapp/core/styles/colors.dart';
import 'package:flutter/material.dart';

navigator(context, screen) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => screen));
}


textField({
  required TextEditingController controller,
  required BuildContext context,
  required String hint,
  required TextInputType textInputType,
  onSubmitt,
  suffix,
  Validate,
  secure = false,
}) =>
    TextFormField(
      controller: controller,
      validator: Validate,
      obscureText: secure,
      keyboardType: textInputType,
      onFieldSubmitted: onSubmitt,
      style: TextStyle(fontSize: MediaQuery.of(context).size.height * 0.027,color: Colors.white),
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(MediaQuery.of(context).size.height * 0.025),
                bottomLeft:
                Radius.circular(MediaQuery.of(context).size.height * 0.025),
              )),
          hintText: hint,
          fillColor: defualtColor2(),
          filled: true,
          suffix: suffix,
          hintStyle: TextStyle(fontSize: MediaQuery.of(context).size.height * 0.027,color: Colors.white)
      ),
    );

/*
///////////////////////////////////////////
textField2(
    {required TextEditingController controller,
      required BuildContext context,
      required String hint,
      required TextInputType textInputType,
      Validate,
      secure = false,
      icon,
      double fontSize = 0,
      double hintfontSize = 0}) =>
    TextFormField(
      controller: controller,
      validator: Validate,
      obscureText: secure,
      keyboardType: textInputType,
      style: TextStyle(fontSize: fontSize),
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.only(
                topRight:
                Radius.circular(MediaQuery.of(context).size.height * 0.025),
                bottomLeft:
                Radius.circular(MediaQuery.of(context).size.height * 0.025),
              )),
          hintText: hint,
          hintStyle: style1(
            size: hintfontSize,
          ),
          prefixIcon: icon),
    );*/
AppBar appBar({
  required BuildContext context,
  required HomeCubit cubit,
  required HomeState state,
  required PageController pageController
}) => AppBar(
  backgroundColor: Colors.transparent,
  leading: IconButton(
    onPressed: () {
      Navigator.pop(context);
    },
    icon: const Icon(
      Icons.arrow_back_ios,
      size: 30,
      color: Colors.white,
    ),
  ),
  title: state is UploadStoryLoadingState
      ? Padding(
    padding: const EdgeInsets.only(left: 15.0, right: 15, top: 10),
    child: LinearProgressIndicator(
      color: defualtColor1(),
      backgroundColor: defualtColor4(),
    ),
  )
      : SmoothIndicator(
    pageController: pageController,
    length: cubit.storyList.length,
  ),
  centerTitle: true,
);