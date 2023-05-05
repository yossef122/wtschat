import 'package:chatapp/Features/phone_authentication/presentation/view/widget/Verifying_code_body.dart';
import 'package:chatapp/Features/phone_authentication/presentation/view_model/SignIn_CloudFireStore/sign_user_cubit.dart';
import 'package:chatapp/Features/phone_authentication/presentation/view_model/phone_authentication/phone_auth_cubit.dart';
import 'package:chatapp/core/utils/WebService_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VerifyingCode extends StatelessWidget {
  const VerifyingCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: MultiBlocProvider(
          providers: [
            BlocProvider<SignUserCubit>.value(
              value: getIt.get<SignUserCubit>(),
            ),
            BlocProvider<PhoneAuthCubit>.value(
              value: getIt.get<PhoneAuthCubit>(),
            ),
          ],
          child: const VerifyingCodeBody(),
        ),
      ),
    );
  }
}
