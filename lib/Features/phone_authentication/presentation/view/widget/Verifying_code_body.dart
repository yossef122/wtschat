import 'package:chatapp/Features/phone_authentication/presentation/view/widget/BuildIntroText_verify.dart';
import 'package:chatapp/Features/phone_authentication/presentation/view/widget/BuildPhoneNumberVerified.dart';
import 'package:chatapp/Features/phone_authentication/presentation/view/widget/BuildPinCodeFields.dart';
import 'package:chatapp/Features/phone_authentication/presentation/view/widget/verified_button.dart';
import 'package:chatapp/Features/phone_authentication/presentation/view_model/phone_auth_cubit.dart';
import 'package:chatapp/core/utils/Constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class VerifyingCodeBody extends StatelessWidget {
  const VerifyingCodeBody({Key? key/*,required this.phoneNumber*/}) : super(key: key);
  // final String phoneNumber ;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 88, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BuildIntroTextOfVerify(/*phoneNumber: phoneNumber,*/),
          const SizedBox(
            height: 100,
          ),
          BuildPinCodeFields(context1: context),
          const SizedBox(
            height: 70,
          ),
          VerifiedButton(
            text: 'Verify',
            onPressed: () {
              // loadingWidget(context);
              login(context,otpCode);
            },
          ),
          const BuildPhoneNumberVerified()
        ],
      ),
    );
  }
}


// ignore: must_be_immutable

void login(BuildContext context,code){
  BlocProvider.of<PhoneAuthCubit>(context).submitSms(code);
}