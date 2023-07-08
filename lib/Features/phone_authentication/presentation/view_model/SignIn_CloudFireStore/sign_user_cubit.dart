import 'package:chatapp/Features/phone_authentication/data/Model/UserData.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'sign_user_state.dart';

class SignUserCubit extends Cubit<SignUserState> {
  SignUserCubit() : super(SignUserInitial());

  static SignUserCubit get(context) => BlocProvider.of(context);

  void insertUserData({
    required String name,
    required String photo,
    required String uId,
    required String phone,
    required String bio,
  }) {
    emit(UserCreateLoadingStates());
    UserData model = UserData(
      name: name,
      uId: uId,
      phoneNumber: phone,
      personalPhoto: photo,
      bio: bio,
    );
    FirebaseFirestore.instance
        .collection('users')
        .doc(uId)
        .set(model.toMap())
        .then((value) {
      emit(UserCreateSuccessStates());
    }).catchError((error) {
      emit(UserCreateErrorStates(error.toString()));
    });
  }

  void editUserData({
    required String name,
    required String photo,
    required String uId,
    required String phone,
    required String bio,
  }) {
    emit(UserCreateLoadingStates());
    UserData model = UserData(
      name: name,
      uId: uId,
      phoneNumber: phone,
      personalPhoto: photo,
      bio: bio,
    );
    FirebaseFirestore.instance
        .collection('users')
        .doc(uId)
        .update(model.toMap())
        .then((value) {
      emit(UserCreateSuccessStates());
    }).catchError((error) {
      emit(UserCreateErrorStates(error.toString()));
    });
  }
}
