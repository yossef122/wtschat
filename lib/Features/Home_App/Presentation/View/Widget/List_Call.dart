import 'package:chatapp/Features/Home_App/Presentation/View/Widget/HomeCallDetails.dart';
import 'package:flutter/material.dart';

class ListViewOfCall extends StatelessWidget {
  const ListViewOfCall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: ListView.separated(
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(
              height: 0,
            );
          },
          itemBuilder: (BuildContext context, int index) {
            return const CallDetails();
          },
          itemCount: 10,
        ),
      ),
    );
  }
}
