import 'package:chatapp/Features/Setting/Presentation/view/widgets/Setting_FinaLItem.dart';
import 'package:chatapp/Features/Setting/Presentation/view/widgets/SettingsList_ItemsOptions.dart';
import 'package:chatapp/Features/Setting/Presentation/view/widgets/UpperItem_SettingScreen.dart';
import 'package:flutter/material.dart';

class SettingScreenBody extends StatelessWidget {
  const SettingScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const UpperItemSettingScreen(),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 1,
            width: double.infinity,
            color: Colors.grey[200],
          ),
          const SettingsOptions(),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 1,
            width: double.infinity,
            color: Colors.grey[200],
          ),
          const SettingFinalIem(),
          // const SizedBox(
          //   height: 25,
          // ),
        ],
      ),
    );
  }
}
