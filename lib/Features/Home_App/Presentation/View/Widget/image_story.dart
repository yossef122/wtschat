/*
import 'dart:io';

import 'package:chatapp/Features/Home_App/Presentation/View/Widget/iconUpload_story.dart';
import 'package:chatapp/Features/Home_App/Presentation/View_model/Home/home_cubit.dart';
import 'package:chatapp/core/utils/functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';

class ImageStory extends StatelessWidget {
  const ImageStory({super.key, required this.story, this.storyImage});

  final List<dynamic> story;
  final File? storyImage;
  @override
  Widget build(BuildContext context) {
    var pageController = PageController();
    var textController = TextEditingController();
    var height = MediaQuery.of(context).size.height;
    var cubit = HomeCubit.get(context);
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        if (state is */
/*UploadStorySuccessState*//*
upload_story_success_state) {
          Navigator.pop(context);
          showToast(
            'Upload Success',
            context: context,
            animation: StyledToastAnimation.slideFromLeftFade,
            reverseAnimation: StyledToastAnimation.fade,
            position: StyledToastPosition.center,
            animDuration: const Duration(seconds: 1),
            duration: const Duration(seconds: 4),
            backgroundColor: Colors.green,
            borderRadius: BorderRadius.circular(height * 0.02),
            textStyle: TextStyle(
              fontSize: height * 0.022,
              color: Colors.white,
            ),
            curve: Curves.fastLinearToSlowEaseIn,
            reverseCurve: Curves.fastLinearToSlowEaseIn,
          );
        }
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.black,
          */
/*appBar: appBar(
            context: context,
            cubit: cubit,
            state: state,
            pageController: pageController,
          ),*//*

          body: Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: FileImage(storyImage!),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10, right: 10, left: 10),
                child: textField(
                  controller: textController,
                  context: context,
                  hint: 'Tell',
                  suffix: IconUploadStory(
                    cubit: cubit,
                    textController: textController,
                  ),
                  textInputType: TextInputType.text,
                ),
              )
            ],
          ),
        );
      },
    );
  }
}*/
import 'dart:io';
import 'package:chatapp/Features/Home_App/Presentation/View/Widget/iconUpload_story.dart';
import 'package:chatapp/Features/Home_App/Presentation/View_model/Home/home_cubit.dart';
import 'package:chatapp/core/utils/functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';

class ImageStory extends StatelessWidget {
  const ImageStory({super.key,required this.storyImage,required this.story});

  final List<dynamic> story;
  final File? storyImage;
  @override
  Widget build(BuildContext context) {
    var pageController = PageController();
    var textController = TextEditingController();
    var height = MediaQuery.of(context).size.height;
    var cubit = HomeCubit.get(context);
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        if (state is UploadStorySuccessState) {
          Navigator.pop(context);
          showToast(
            'Upload Success',
            context: context,
            animation: StyledToastAnimation.slideFromLeftFade,
            reverseAnimation: StyledToastAnimation.fade,
            position: StyledToastPosition.center,
            animDuration: Duration(seconds: 1),
            duration: Duration(seconds: 4),
            backgroundColor: Colors.green,
            borderRadius: BorderRadius.circular(height * 0.02),
            textStyle: TextStyle(
              fontSize: height * 0.022,
              color: Colors.white,
            ),
            curve: Curves.fastLinearToSlowEaseIn,
            reverseCurve: Curves.fastLinearToSlowEaseIn,
          );
        }
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: appBar(
            context: context,
            cubit: cubit,
            state: state,
            pageController: pageController,
          ),
          body: Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: FileImage(storyImage!) as ImageProvider,
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10, right: 10, left: 10),
                child: textField(
                  controller: textController,
                  context: context,
                  hint: 'Tell',
                  suffix: IconUploadStory(
                    cubit: cubit,
                    textController: textController,
                  ),
                  textInputType: TextInputType.text,
                ),
              )
            ],
          ),
        );
      },
    );
  }
}