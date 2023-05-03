import 'package:chatapp/Features/Home_App/Presentation/View/CallScreen.dart';
import 'package:chatapp/Features/Home_App/Presentation/View/HomeScreen.dart';
import 'package:chatapp/Features/Profile_photo/presentation/view/Profile_photo_screen.dart';
import 'package:chatapp/Features/Setting/Presentation/view/setting_screen.dart';
import 'package:chatapp/Features/chat_details/presentation/view/chatDetails_Screen.dart';
import 'package:chatapp/Features/login_phoneAuth/presentation/view/Verifying_code.dart';
import 'package:chatapp/Features/login_phoneAuth/presentation/view/phone_authentication_screen.dart';
import 'package:chatapp/Features/splash/presentation/views/splash.dart';
import 'package:go_router/go_router.dart';


class RouterBuild {
  static var kSplashScreen = '/';
  static var kVerifyingCode = '/VerifyingCode';
  static var kPhoneAuthenticationScreen = '/PhoneAuthenticationScreen';
  static var kHomeScreen = '/HomeScreen';
  static var kCallScreen = '/CallScreen';
  static var kSettingScreen = '/SettingScreen';
  static var kProfilePhotoScreen = '/ProfilePhotoScreen';
  static var kChatDetailsScreen = '/ChatDetailsScreen';

  static final GoRouter router = GoRouter(
    routes: [

      GoRoute(
        path:  kPhoneAuthenticationScreen ,
        builder: (context, state) {
          return const PhoneAuthenticationScreen();
        },
      ),
      GoRoute(
        path:  kSplashScreen ,
        builder: (context, state) {
          return const SplashScreen();
        },
      ),
      GoRoute(
        path:  kVerifyingCode ,
        builder: (context, state) {
          return const VerifyingCode();
        },
      ),
      GoRoute(
        path:  kHomeScreen ,
        builder: (context, state) {
          return const HomeScreen();
        },
      ),
      GoRoute(
        path:  kCallScreen ,
        builder: (context, state) {
          return const CallScreen();
        },
      ),
      GoRoute(
        path:  kSettingScreen ,
        builder: (context, state) {
          return const SettingScreen();
        },
      ),GoRoute(
        path:  kProfilePhotoScreen ,
        builder: (context, state) {
          return const ProfilePhotoScreen();
        },
      ),GoRoute(
        path:  kChatDetailsScreen ,
        builder: (context, state) {
          return const ChatDetailsScreen();
        },
      ),

    ],
  );
}
