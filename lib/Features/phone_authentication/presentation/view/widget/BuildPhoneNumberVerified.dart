import 'package:chatapp/Features/phone_authentication/presentation/view_model/phone_authentication/phone_auth_cubit.dart';
import 'package:chatapp/Features/phone_authentication/presentation/view_model/phone_authentication/phone_auth_state.dart';
import 'package:chatapp/core/Widgets/LoadingWidget.dart';
import 'package:chatapp/core/utils/Routing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';


class BuildPhoneNumberVerified extends StatelessWidget {
  const BuildPhoneNumberVerified({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<PhoneAuthCubit, PhoneAuthState>(
      listenWhen: (previous, current) {
        return previous != current;
      },
      listener: (context, state) {
        if (state is PhoneAuthLoadingState) {
          return loadingWidget(context);
        } else if (state is PhoneAuthVerifiedState) {
          // Navigator.pop(context);
          GoRouter.of(context)
              .push(RouterBuild.kHomeScreen/*, extra: phoneNumber*/);
        } else if (state is PhoneAuthErrorState) {
          // Navigator.pop(context);
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.message.toString()),
              backgroundColor: Colors.black,
              duration: const Duration(seconds: 3),
            ),
          );
        }
      },
      child: Container(),
    );
  }
}
