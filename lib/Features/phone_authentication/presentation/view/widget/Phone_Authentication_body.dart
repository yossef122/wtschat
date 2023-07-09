import 'package:chatapp/Features/phone_authentication/presentation/view/Verifying_code.dart';
import 'package:chatapp/Features/phone_authentication/presentation/view/widget/build_introText.dart';
import 'package:chatapp/Features/phone_authentication/presentation/view/widget/build_phoneFormField.dart';
import 'package:chatapp/Features/phone_authentication/presentation/view/widget/verified_button.dart';
import 'package:chatapp/Features/phone_authentication/presentation/view_model/phone_authentication/phone_auth_cubit.dart';
import 'package:chatapp/Features/phone_authentication/presentation/view_model/phone_authentication/phone_auth_state.dart';
import 'package:chatapp/core/Widgets/LoadingWidget.dart';
import 'package:chatapp/core/utils/Constants.dart';
import 'package:chatapp/core/utils/Routing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';


class PhoneAuthenticationScreenBody extends StatelessWidget {
  PhoneAuthenticationScreenBody({Key? key}) : super(key: key);
  final _phoneFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: _phoneFormKey,
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 88, horizontal: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BuildIntroText(),
              const SizedBox(
                height: 110,
              ),
              const BuildPhoneFormField(),
              const SizedBox(
                height: 70,
              ),
              VerifiedButton(
                text: 'Next',
                onPressed: () {
                  loadingWidget(context);
                  register(context,_phoneFormKey);
                  // GoRouter.of(context).push(RouterBuild.kVerifyingCodeScreen);
                },
              ),
              BuildPhoneNumberSubmited()
            ],
          ),
        ),
      ),
    );
  }
}

class BuildPhoneNumberSubmited extends StatelessWidget {
  BuildPhoneNumberSubmited({Key? key})
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
          } else if (state is PhoneAuthSuccessState) {
            Navigator.pop(context);
            //

            /*GoRouter.of(context)
              .push(RouterBuild.kVerifyingCode, extra: phoneNumber);*/

            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) =>const VerifyingCode()));
        } else if (state is PhoneAuthErrorState) {
          Navigator.pop(context);
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.message.toString(),style: const TextStyle(color: Colors.white,fontSize: 23),),
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

Future<void>register(BuildContext context,GlobalKey<FormState> formKey)async{
  if(!formKey.currentState!.validate()){
    GoRouter.of(context).pop();
    return ;
  }else{
    // GoRouter.of(context).pop();
    formKey.currentState!.save();
    BlocProvider.of<PhoneAuthCubit>(context).submitPhoneNumber(phoneNumber);
  }
}