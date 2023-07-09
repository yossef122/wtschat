import 'package:chatapp/Features/Home_App/Presentation/View/HomeScreen.dart';
import 'package:chatapp/Features/Home_App/Presentation/View/HomeScreen.dart';
import 'package:chatapp/Features/Setting/Presentation/view/setting_screen.dart';
import 'package:chatapp/core/utils/Routing.dart';
import 'package:chatapp/core/utils/functions.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreenAppBar extends StatelessWidget {
  const HomeScreenAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(left: width * 0.05, bottom: height * 0.017),
      child: Row(
        children: [
          Text(
            'WhatsApp',
            style: TextStyle(
              fontSize: height * 0.033,
              color: Colors.grey,
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.camera_alt_outlined,
              color: Colors.grey,
              size: height * 0.03,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.grey,
              size: height * 0.03,
            ),
          ),
          IconButton(
            onPressed: () {
              navigator(context, const SettingScreen());

              // GoRouter.of(context).push(RouterBuild.kSettingScreen);
            },
            icon: Icon(
              Icons.more_vert_sharp,
              color: Colors.grey,
              size: height * 0.03,
            ),
          ),
        ],
      ),
    );
  }
}
