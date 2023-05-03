import 'package:chatapp/Features/Home_App/Presentation/View/Widget/HomeScreen_tabBar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TabController _tabController = TabController(length: 3, vsync: this);
    return const SafeArea(
      child: Scaffold(
        body: HomeScreenBody(),
      ),
    );
  }
}
