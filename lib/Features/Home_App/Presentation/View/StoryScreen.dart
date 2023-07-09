import 'package:chatapp/Features/Home_App/Presentation/View/Widget/story_scren_body.dart';
import 'package:chatapp/Features/Home_App/Presentation/View_model/Home/home_cubit.dart';
import 'package:chatapp/core/utils/WebService_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StoryScreen extends StatelessWidget {
  const StoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: StoryScreenBody(),
    );
  }
}
