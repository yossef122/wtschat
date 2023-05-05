import 'package:chatapp/core/utils/assets.dart';
import 'package:flutter/material.dart';

class StoryStatusItem extends StatelessWidget {
  const StoryStatusItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.only(
          left: width * 0.035,
          right: width * 0.035,
          bottom: height*0.02
      ),
      color: Colors.grey.withOpacity(0.1),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: height * 0.05,
            backgroundColor: Colors.green,
            child: CircleAvatar(
              radius: height * 0.046,
              backgroundImage: const AssetImage(AppImage.chatPhoto),
            ),
          ),
          Padding(
            padding:
            EdgeInsets.only(left: width * 0.03, top: height * 0.01),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Adel',
                  style: TextStyle(
                    fontSize: height * 0.03,
                    fontFamily: 'Dosis',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '1h ago',
                  style: TextStyle(
                    fontSize: height * 0.025,
                    color: Colors.grey,
                    fontFamily: 'Dosis',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
