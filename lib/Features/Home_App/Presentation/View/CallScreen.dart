import 'package:chatapp/Features/Home_App/Presentation/View/Widget/CallScreen_Body.dart';
import 'package:flutter/material.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TabController _tabController = TabController(length: 3, vsync: this);
    return const SafeArea(
      child: Scaffold(
        body: CallScreenBody(),
      ),
    );
  }
}
