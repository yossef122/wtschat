import 'package:chatapp/core/utils/Colors.dart';
import 'package:chatapp/core/utils/Constants.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class BuildPinCodeFields extends StatelessWidget {
  BuildPinCodeFields({Key? key, required this.context1}) : super(key: key);
  BuildContext context1;

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      length: 6,
      autoFocus: true,
      keyboardType: TextInputType.number,
      cursorColor: Colors.black,
      obscureText: false,
      animationType: AnimationType.scale,
      pinTheme: PinTheme(
          shape: PinCodeFieldShape.box,
          borderWidth: 1,
          activeColor: MyColors.blue,
          inactiveColor: MyColors.blue,
          inactiveFillColor: Colors.white,
          borderRadius: BorderRadius.circular(5),
          fieldHeight: 50,
          fieldWidth: 40,
          activeFillColor: MyColors.blue,
          selectedColor: MyColors.blue,
          selectedFillColor: Colors.white),
      animationDuration: const Duration(milliseconds: 300),
      backgroundColor: Colors.blue.shade50,
      enableActiveFill: true,
      onCompleted: (codeFromUser) {
        otpCode=codeFromUser;
        print(otpCode);
        // login(context,codeFromUser);
        // BlocProvider.of<PhoneAuthCubit>(context).changeOtpCode(codeFromUser);
        // print("Completed");
      },
      onChanged: (value) {
        print(value);
      },
      appContext: context1,
    );
  }
}
