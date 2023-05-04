import 'package:chatapp/core/utils/Constants.dart';
import 'package:chatapp/core/utils/Routing.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({Key? key}) : super(key: key);

  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () => GoRouter.of(context).push(user == null
          ? RouterBuild.kPhoneAuthenticationScreen
          : RouterBuild.kHomeScreen),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset(
          'assets/LottieAnimations/splash2.json',
        ),
      ),
    );
  }
}
