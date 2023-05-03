import 'package:chatapp/core/utils/Routing.dart';
import 'package:chatapp/core/utils/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeChat extends StatelessWidget {
  const HomeChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: (){
        GoRouter.of(context).push(RouterBuild.kChatDetailsScreen);
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 0, horizontal: width * .035),
        child: SizedBox(
          height: height * .105,
          width: width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: height * .07,
                child: CircleAvatar(
                  radius: height * .037,
                  backgroundImage:  const AssetImage(AppImage.chatPhoto),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: height * .035,
                    width: width * .75,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Jo2',
                              style: TextStyle(
                                  fontSize: height * .02,
                                  color: Colors.blue,
                                  overflow: TextOverflow.ellipsis),
                            ),
                            const Spacer(),
                            Text(
                              '3:27 AM',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: height * .02,
                                  color: Colors.blue,
                                  overflow: TextOverflow.ellipsis),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * .035,
                    width: width * .75,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: width * .5,
                              child: Text(
                                'hello my brother ssssssssssssssssssssssssssssssssss',
                                style: TextStyle(
                                    fontSize: height * .02,
                                    color: Colors.blue,
                                    overflow: TextOverflow.ellipsis),
                              ),
                            ),
                            const Spacer(),
                            CircleAvatar(
                              backgroundColor: CupertinoColors.systemGreen,
                              radius: 10,
                              child: Text(
                                '7',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: height * .02,
                                    color: Colors.white,
                                    overflow: TextOverflow.ellipsis),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
