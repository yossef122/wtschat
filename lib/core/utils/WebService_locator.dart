
import 'package:chatapp/Features/Home_App/Presentation/View_model/ChatUsers/chat_users_cubit.dart';
import 'package:chatapp/Features/Home_App/Presentation/View_model/Home/home_cubit.dart';
import 'package:chatapp/Features/chat_details/presentation/view_model/emojiChange/chat_cubit.dart';
import 'package:chatapp/Features/phone_authentication/presentation/view_model/SignIn_CloudFireStore/sign_user_cubit.dart';
import 'package:chatapp/Features/phone_authentication/presentation/view_model/phone_authentication/phone_auth_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {


  getIt.registerSingleton<PhoneAuthCubit>(
      PhoneAuthCubit()
  );

  getIt.registerSingleton<SignUserCubit>(
      SignUserCubit()
  );

  getIt.registerSingleton<ChatUsersCubit>(
      ChatUsersCubit()
  );

  getIt.registerSingleton<ChatCubit>(
      ChatCubit()
  );

  getIt.registerSingleton<HomeCubit>(
      HomeCubit()
  );
}