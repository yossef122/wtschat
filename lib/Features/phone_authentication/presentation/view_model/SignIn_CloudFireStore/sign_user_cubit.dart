import 'dart:io';

import 'package:chatapp/Features/phone_authentication/data/Model/UserData.dart';
import 'package:chatapp/core/utils/Constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

part 'sign_user_state.dart';

class SignUserCubit extends Cubit<SignUserState> {
  SignUserCubit() : super(SignUserInitial());

  static SignUserCubit get(context) => BlocProvider.of(context);
  File? storyImage;
  var storyPicker = ImagePicker();

  Future<void> userImage() async {
    final pickerFile = await storyPicker.pickImage(source: ImageSource.gallery);

    if (pickerFile != null) {
      print(pickerFile.path);
      storyImage = File(pickerFile.path);
      uploadUserImage();
      emit(PickedUserImageSuccessState());
    } else {
      print('No Image Selected');
      emit(PickedUserImageErrorState());
    }
  }

  String? userImageUrl;

  void uploadUserImage() {
    emit(UploadUserLoadingState());
    // userImage();
    FirebaseStorage.instance
        .ref()
        .child(Uri.file(storyImage!.path).pathSegments.last)
        .putFile(storyImage!)
        .then((value) {
      value.ref.getDownloadURL().then((value) {
        userImageUrl = value;
        print(userImageUrl);
        emit(UploadUserSuccessState());
      }).catchError((Error) {
        print(Error.toString());
        emit(UploadUserErrorState());
      });
      // updateUserImage();
    }).catchError((Error) {
      print(Error.toString());
      emit(UploadUserErrorState2());
    });
  }

  UserData? userdata;

  void insertUserData({
    required String name,
    required String photo,
    required String uId,
    required String phone,
    required String bio,
  }) {
    emit(UserCreateLoadingStates());
    userdata = UserData(
      name: name,
      uId: uId,
      phoneNumber: phone,
      personalPhoto: photo,
      bio: bio,
    );
    FirebaseFirestore.instance
        .collection('users')
        .doc(uId)
        .set(userdata!.toMap())
        .then((value) {
      // userdata=value as UserData;
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

  UserData? userData;

  getUserInfo() {
    emit(GetAllUsersLoadingState());
    FirebaseFirestore.instance.collection('users').get().then((value) {
      value.docs.forEach((element) {
        if (element.id == user!.uid) {
          // print(element.id);
          userData = UserData.fromJson(element.data());
        }
      });

      emit(GetAllUsersSuccessState());
    }).catchError((error) {
      emit(GetAllUsersErrorState(error.toString()));
    });
  }
}
