import 'package:chatapp/Features/phone_authentication/presentation/view/widget/Phone_Authentication_body.dart';
import 'package:chatapp/Features/phone_authentication/presentation/view_model/phone_authentication/phone_auth_cubit.dart';
import 'package:chatapp/core/utils/WebService_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PhoneAuthenticationScreen extends StatelessWidget {
  const PhoneAuthenticationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: BlocProvider<PhoneAuthCubit>.value(
          value: getIt.get<PhoneAuthCubit>(),
          child: PhoneAuthenticationScreenBody(),
        ),
      ),
    );
  }
}
