import 'package:chatapp/Features/Home_App/Presentation/View/Widget/HomeChatDetails.dart';
import 'package:chatapp/Features/Home_App/Presentation/View_model/ChatUsers/chat_users_cubit.dart';
import 'package:chatapp/Features/Home_App/Presentation/View_model/Home/home_cubit.dart';
import 'package:chatapp/Features/splash/presentation/views/splash.dart';
import 'package:chatapp/core/bloc_observe/bloc_observe.dart';
import 'package:chatapp/core/styles/colors.dart';
import 'package:chatapp/core/utils/Constants.dart';

// import 'package:chatapp/core/utils/Routing.dart';
import 'package:chatapp/core/utils/WebService_locator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  Bloc.observer = MyBlocObserver();
  setupServiceLocator();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FirebaseAuth.instance.authStateChanges().listen((userAuth) {
    user = userAuth;
  });

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: defualtColor1(), // navigation bar color
    statusBarColor: defualtColor1(), // status bar color
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ChatUsersCubit>.value(
          value: getIt.get<ChatUsersCubit>()..getAllUsers(),
        ),
        BlocProvider<HomeCubit>.value(
          value: getIt.get<HomeCubit>()..getStory(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const SplashScreen(),
      ),
    );
  }
}
