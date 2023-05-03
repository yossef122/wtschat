import 'package:chatapp/core/utils/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CallDetails extends StatelessWidget {
  const CallDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * .03),
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
            SizedBox(
              height: height * .06,
              width: width * .65,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Jo2',
                    style: TextStyle(
                        fontSize: height * .02,
                        color: Colors.blue,
                        overflow: TextOverflow.ellipsis),
                  ),
                  Row(
                    children: [
                      const Icon(Icons.call_made,size: 20,color: Colors.greenAccent,),
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
            const Spacer(),
            IconButton(onPressed: (){}, icon: const Icon(Icons.call,size: 30,color: Colors.green,))
          ],
        ),
      ),
    );
  }
}
