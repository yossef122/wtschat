import 'package:chatapp/Features/Home_App/Presentation/View/Widget/List_Community.dart';
import 'package:chatapp/Features/Home_App/Presentation/View/Widget/NewCommunity.dart';
import 'package:flutter/material.dart';

class Community extends StatelessWidget {
  const Community({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const NewCommunityWidget(
          text: 'Flutter Community',
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          color: Colors.grey,
          width: double.infinity,
          height: 1,
        ),
        const CommunityListView()
      ],
    );
  }
}
