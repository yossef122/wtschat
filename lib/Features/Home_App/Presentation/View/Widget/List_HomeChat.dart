import 'package:chatapp/Features/Home_App/Presentation/View/Widget/HomeChatDetails.dart';
import 'package:flutter/material.dart';

class ListViewOfHomeChat extends StatelessWidget {
  const ListViewOfHomeChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: ListView.separated(

          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(
              height: 0,
            );
          },
          itemBuilder: (BuildContext context, int index) {
            return const HomeChat();
          },
          itemCount: 10,
        ),
      ),
    );
  }
}
