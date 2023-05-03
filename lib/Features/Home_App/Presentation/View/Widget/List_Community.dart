import 'package:chatapp/Features/Home_App/Presentation/View/Widget/CommunityChat_details.dart';
import 'package:flutter/material.dart';

class CommunityListView extends StatelessWidget {
  const CommunityListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        children: [
          ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return const CommunityChatDetails();
              },
              separatorBuilder: (context, index) {
                return const SizedBox(
                  height: 4,
                );
              },
              itemCount: 2),
          Padding(
            padding:
                EdgeInsets.only(left: MediaQuery.of(context).size.width * .04),
            child: InkWell(
              focusColor: Colors.blue,
              highlightColor: Colors.red,
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.grey,
                    size: MediaQuery.of(context).size.width * .05,
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * .01),
                  Text(
                    'View all',
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * .05,
                        color: Colors.blue),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
