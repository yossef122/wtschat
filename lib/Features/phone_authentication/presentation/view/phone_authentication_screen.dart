import 'package:chatapp/Features/phone_authentication/presentation/view/widget/Phone_Authentication_body.dart';
import 'package:flutter/material.dart';

class PhoneAuthenticationScreen extends StatelessWidget {
  const PhoneAuthenticationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: PhoneAuthenticationScreenBody(),
      ),
    );
  }
}
