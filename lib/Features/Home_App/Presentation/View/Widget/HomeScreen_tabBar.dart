import 'package:chatapp/Features/Home_App/Presentation/View/CallScreen.dart';
import 'package:chatapp/Features/Home_App/Presentation/View/Community_Screen.dart';
import 'package:chatapp/Features/Home_App/Presentation/View/Home_ChatScreen.dart';
import 'package:chatapp/Features/Home_App/Presentation/View/StoryScreen.dart';
import 'package:chatapp/Features/Home_App/Presentation/View/Widget/HomeScreen_appbar.dart';
import 'package:chatapp/Features/Home_App/Presentation/View/Widget/tabBar_indicator.dart';
import 'package:chatapp/core/styles/colors.dart';
import 'package:flutter/material.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 4,
      initialIndex: 0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.only(top: height * 0.04),
            color: defualtColor1(),
            child: Column(
              children: const [
                HomeScreenAppBar(),
                TabBarIndicator(),
              ],
            ),
          ),
          const Expanded(
            child: TabBarView(
              children: [
                CommunityScreen(),
                ChatScreen(),
                StoryScreen(),
                CallScreen(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
