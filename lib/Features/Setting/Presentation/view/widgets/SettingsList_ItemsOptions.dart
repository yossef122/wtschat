import 'package:chatapp/Features/Setting/Presentation/view/widgets/Information_List_option.dart';
import 'package:chatapp/Features/Setting/Presentation/view/widgets/Setting_Item.dart';
import 'package:flutter/material.dart';

class SettingsOptions extends StatelessWidget {
  const SettingsOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(
        top: height * .01,
        left: width * .05,
      ),
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return SettingItem(
            icon: settingIcon[index],
            upperText: settingUpperText[index],
            lowerText: settingLowerText[index],
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 5,
          );
        },
        itemCount: settingIcon.length,
      ),
    );
  }
}
