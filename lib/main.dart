import 'package:chatapp/core/bloc_observe/bloc_observe.dart';
import 'package:chatapp/core/styles/colors.dart';
import 'package:chatapp/core/utils/Routing.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  Bloc.observer = MyBlocObserver();

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: defualtColor1(), // navigation bar color
    statusBarColor: defualtColor1(), // status bar color
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerDelegate: RouterBuild.router.routerDelegate,
      routeInformationProvider: RouterBuild.router.routeInformationProvider,
      routeInformationParser: RouterBuild.router.routeInformationParser,
    );
  }
}
