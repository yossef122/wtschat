
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
}