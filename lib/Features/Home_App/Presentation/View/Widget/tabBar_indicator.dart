import 'package:chatapp/core/styles/colors.dart';
import 'package:flutter/material.dart';

class TabBarIndicator extends StatelessWidget {
  const TabBarIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return TabBar(
      isScrollable: true,
      tabs: [
        Padding(
          padding: EdgeInsets.only(right: width * 0.02),
          child: Tab(
            icon: Icon(
              Icons.groups,
              size: height * 0.04,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: width * 0.04),
          child: const Tab(
            text: 'Chat',
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: width * 0.04),
          child: const Tab(
            text: 'Story',
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: width * 0.04),
          child: const Tab(
            text: 'Calls',
          ),
        ),
      ],
      labelColor: defualtColor5(),
      labelStyle: TextStyle(fontSize: height * 0.03),
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(
          color: defualtColor5(),
          width: 4,
        ),
      ),
      unselectedLabelColor: defualtColor4(),
      padding: EdgeInsets.only(
          /*left: width * 0.02,*/ /*right: width * 0.02,*/ bottom: height * 0.0006),
    );
  }
}
