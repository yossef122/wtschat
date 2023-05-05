import 'package:chatapp/Features/Home_App/Presentation/View/Widget/StoryScreen_body.dart';
import 'package:flutter/material.dart';

class StoryScreen extends StatelessWidget {
  const StoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: story_scren_body(),
    );
  }
}
