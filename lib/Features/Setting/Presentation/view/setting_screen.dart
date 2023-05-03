import 'package:chatapp/Features/Setting/Presentation/view/widgets/settingScreen_body.dart';
import 'package:chatapp/core/styles/colors.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
        title: const Text('Setting'),
        backgroundColor: defualtColor1(),
      ) ,
      body: const SettingScreenBody(),
    );
  }
}
