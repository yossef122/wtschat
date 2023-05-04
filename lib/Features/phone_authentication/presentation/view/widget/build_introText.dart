import 'package:flutter/material.dart';

/*
class BuildIntroText extends StatelessWidget {
   BuildIntroText({Key? key}) : super(key: key);
   late String phoneNumber ;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'what\'s is your phone number ?',
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
            text:  TextSpan(
                text: 'Enter your 6 digit code to verify',
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
*/
class BuildIntroText extends StatelessWidget {
  const BuildIntroText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'what\'s is your phone number ?',
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
          child: const Text(
            'please enter your phone number to verify your account ',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.normal,
              color: Colors.black,
            ),
          ),
        )
      ],
    );
  }
}
