import 'package:chatapp/Features/phone_authentication/presentation/view/widget/Build_ProfileScreen.dart';
import 'package:chatapp/Features/phone_authentication/presentation/view_model/SignIn_CloudFireStore/sign_user_cubit.dart';
import 'package:chatapp/core/styles/colors.dart';
import 'package:chatapp/core/utils/WebService_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInProfileScreen extends StatelessWidget {
  const SignInProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SignUserCubit>.value(
      value: getIt.get<SignUserCubit>(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: defualtColor1(),
          title: const Text('profile'),
        ),
        body: profileScreenBody(),
      ),
    );
  }
}
