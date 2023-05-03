import 'package:chatapp/core/styles/colors.dart';
import 'package:chatapp/core/utils/assets.dart';
import 'package:flutter/material.dart';


class ChatAppbar extends StatelessWidget {
  const ChatAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Container(
        height: height * .09,
        color: defualtColor1(),
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: height * .06,
              child: CircleAvatar(
                radius: height * .027,
                backgroundImage: const AssetImage(AppImage.chatPhoto),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Jo2',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: Colors.white),
                ),
                Text(
                  'Message yourself',
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                      color: Colors.white),
                )
              ],
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert_sharp,
              ),
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
