import 'package:chatapp/Features/phone_authentication/presentation/view/widget/Verifying_code_body.dart';
import 'package:flutter/material.dart';

class VerifyingCode extends StatelessWidget {
   const VerifyingCode({Key? key/*,required this.phoneNumber*/}) : super(key: key);
  // final String phoneNumber ;
  @override
  Widget build(BuildContext context) {
    return  const SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body:  VerifyingCodeBody(/*phoneNumber: phoneNumber,*/),
      ),
    );
  }
}
