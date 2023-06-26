import 'package:chatapp/core/utils/assets.dart';
import 'package:flutter/material.dart';

class MyStatusItem extends StatelessWidget {
  const MyStatusItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    bool shared = false;
    return shared
        ? Container(
            padding: EdgeInsets.symmetric(
                horizontal: width * 0.04, vertical: height * 0.01),
            color: Colors.grey.withOpacity(0.1),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: height * 0.05,
                  backgroundColor: Colors.grey,
                  child: CircleAvatar(
                    radius: height * 0.046,
                    backgroundImage: AssetImage('assets/images/test.jpg'),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: width * 0.03, top: height * 0.01),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'MY Status',
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
                const Spacer(),
                Padding(
                  padding:
                      EdgeInsets.only(top: height * 0.01, right: width * 0.03),
                  child: CircleAvatar(
                      radius: height * 0.03,
                      backgroundColor: Colors.grey.withOpacity(0.5),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.camera_alt,
                            size: height * 0.035,
                          ))),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: height * 0.01,
                  ),
                  child: CircleAvatar(
                      radius: height * 0.03,
                      backgroundColor: Colors.grey.withOpacity(0.5),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.edit,
                            size: height * 0.035,
                          ))),
                ),
              ],
            ),
          )
        : Container(
            padding: EdgeInsets.symmetric(
                horizontal: width * 0.04, vertical: height * 0.01),
            color: Colors.grey.withOpacity(0.1),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {},
                  child: Stack(
                    alignment: AlignmentDirectional.bottomEnd,
                    children: [
                      CircleAvatar(
                        radius: height * 0.046,
                        backgroundImage: const AssetImage(AppImage.chatPhoto),
                      ),
                      CircleAvatar(
                        radius: height * 0.015,
                        backgroundColor: Colors.green,
                        child: const Icon(Icons.add),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: width * 0.03, top: height * 0.01),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'MY Status',
                        style: TextStyle(
                          fontSize: height * 0.03,
                          fontFamily: 'Dosis',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Add to my status',
                        style: TextStyle(
                          fontSize: height * 0.023,
                          color: Colors.grey,
                          fontFamily: 'Dosis',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Padding(
                  padding:
                      EdgeInsets.only(top: height * 0.01, right: width * 0.03),
                  child: CircleAvatar(
                    radius: height * 0.03,
                    backgroundColor: Colors.white.withOpacity(0.5),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.camera_alt,
                        size: height * 0.035,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: height * 0.01,
                  ),
                  child: CircleAvatar(
                      radius: height * 0.03,
                      backgroundColor: Colors.white.withOpacity(0.5),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.edit,
                            size: height * 0.035,
                          ))),
                ),
              ],
            ),
          );
  }
}
