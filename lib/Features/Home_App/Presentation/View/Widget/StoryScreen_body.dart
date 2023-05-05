import 'package:chatapp/Features/Home_App/Presentation/View/Widget/contact_status_item.dart';
import 'package:chatapp/Features/Home_App/Presentation/View/Widget/status_item.dart';
import 'package:flutter/material.dart';

class story_scren_body extends StatelessWidget {
  const story_scren_body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const MyStatusItem(),
          Padding(
            padding: EdgeInsets.only(
              top: height * 0.01,
              bottom: height * 0.01,
              left: width * 0.035,
            ),
            child: Text(
              'VIEWED UPDATES',
              style: TextStyle(
                fontSize: height * 0.02,
                color: Colors.grey,
                fontFamily: 'Dosis',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListView.builder(
            itemBuilder: (context, index) => const StoryStatusItem(),
            itemCount: 10,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
          ),
        ],
      ),
    );
  }
}
