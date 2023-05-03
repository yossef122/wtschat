import 'package:chatapp/Features/Home_App/Presentation/View/Widget/CommunityDetails.dart';
import 'package:chatapp/Features/Home_App/Presentation/View/Widget/NewCommunity.dart';
import 'package:flutter/material.dart';

class CommunityScreenBody extends StatelessWidget {
  const CommunityScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const NewCommunityWidget(
          text: 'New Community',
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          color: Colors.grey,
          width: double.infinity,
          height: 8,
        ),
        const Community()
      ],
    );
  }
}


