import 'package:bloc/bloc.dart';
import 'package:chatapp/core/utils/Constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'phone_auth_state.dart';

class PhoneAuthCubit extends Cubit<PhoneAuthState> {
   String? verificationId;

  PhoneAuthCubit() : super(PhoneAuthInitial());

  Future<void> submitPhoneNumber(String? phoneNumber) async {
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: '+2$phoneNumber',
      timeout: const Duration(seconds: 120),
      verificationCompleted: verificationCompleted,
      verificationFailed: verificationFailed,
      codeSent: codeSent,
      codeAutoRetrievalTimeout: codeAutoRetrievalTimeout,
    );
  }

  void verificationCompleted(PhoneAuthCredential credential) async {
    print('verification Completed');
    await signIn(credential);
  }

  void verificationFailed(FirebaseAuthException error) {
    print('verification Failed ${error.toString()}');
    emit(PhoneAuthErrorState(error.toString()));
  }

  void codeSent(String verificationId2, int? resendToken) {
    verificationId = verificationId2;
    emit(PhoneAuthSuccessState());
  }

  void codeAutoRetrievalTimeout(String verificationId) {
    print('codeAutoRetrievalTimeout');
  }

  Future<void> submitSms(String sms) async {
    print(verificationId);
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationId!, smsCode: sms);
    await signIn(credential);
  }

  Future<void> signIn(PhoneAuthCredential credential) async {
    try {
      await FirebaseAuth.instance.signInWithCredential(credential);
      emit(PhoneAuthVerifiedState());
    } catch (error) {
      emit(
        PhoneAuthErrorState(
          error.toString(),
        ),
      );
    }
  }

  Future<void> logOut() async {
    FirebaseAuth.instance.signOut();
  }

  User getUserData() {
    User userdataFromFirebase = FirebaseAuth.instance.currentUser!;
    return userdataFromFirebase;
  }
void changeOtpCode(code){
  otpCode=code;
  emit(ChangeOtpState());
}
}

