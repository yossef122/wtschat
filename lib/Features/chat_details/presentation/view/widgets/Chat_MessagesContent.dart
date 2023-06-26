import 'package:flutter/material.dart';

class ChatMessagesContent extends StatelessWidget {
  const ChatMessagesContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.only(right: width * .2, left: width * .03),
      child: Container(
        width: 10,
        // height: 200,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            width: 1,
            color: Colors.grey[200]!,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 10, left: 10, right: 10),
              child: Text(
                'youssef helmy youssef helmy youssef helmy youssef helmy youssef helmy',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 5,right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text(
                    '10:13 AM',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey,

                    ),

                  ),
                  Icon(Icons.check,color: Colors.grey,size: 13,)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
