import 'package:chatapp/core/utils/Constants.dart';
import 'package:flutter/material.dart';

class BuildIntroTextOfVerify extends StatelessWidget {
  BuildIntroTextOfVerify({Key? key/*,required this.phoneNumber*/}) : super(key: key);
  // String phoneNumber = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'verify your phone number',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 2),
          child: RichText(
            text: TextSpan(
                text: 'Enter your 6 digit code to verify ',
                style: const TextStyle(
                  fontSize: 18,
                  height: 1.4,
                  color: Colors.black,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: phoneNumber,
                    style: const TextStyle(
                      fontSize: 18,
                      height: 1.4,
                      color: Colors.blue,
                    ),
                  )
                ]),
          ),
        )
      ],
    );
  }
}
