import 'package:chatapp/Features/Home_App/Presentation/View/HomeScreen.dart';
import 'package:chatapp/Features/phone_authentication/data/Model/UserData.dart';
import 'package:chatapp/core/styles/colors.dart';

// import 'package:chatapp/core/utils/Routing.dart';
import 'package:chatapp/core/utils/assets.dart';
import 'package:chatapp/core/utils/functions.dart';
import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';

class ChatAppbar extends StatelessWidget {
  ChatAppbar({Key? key, required this.receiverData}) : super(key: key);

  // String? receiverName;
  UserData? receiverData;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Container(
        height: height * .09,
        color: defualtColor1(),
        child: Row(
          children: [
            IconButton(
              onPressed: () {
                navigator(context, const HomeScreen());
                // GoRouter.of(context).push(RouterBuild.kHomeScreen);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: height * .06,
              child: CircleAvatar(
                radius: height * .027,
                backgroundImage: receiverData!.personalPhoto == null
                    ? const AssetImage(AppImage.chatPhoto)
                    : NetworkImage(receiverData!.personalPhoto!)
                        as ImageProvider,
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: width * .5,
                  child: Text(
                    receiverData!.name!,
                    style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Colors.white,
                        overflow: TextOverflow.ellipsis),
                  ),
                ),
                const Text(
                  'Message your friend',
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
