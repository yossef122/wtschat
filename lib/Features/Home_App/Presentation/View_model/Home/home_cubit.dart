import 'dart:io';
import 'package:chatapp/Features/Home_App/Data/story_model.dart';
import 'package:chatapp/Features/phone_authentication/data/Model/UserData.dart';
import 'package:chatapp/core/utils/Constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart'/* as firebase_storage*/;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  static HomeCubit get(context) => BlocProvider.of(context);

  story_model? storyModel;
  UserData? profileModel;

  // pick profile image
  File? storyImage;
  var storyPicker = ImagePicker();

  Future<void> getStoryImage() async {
    final pickerFile = await storyPicker.pickImage(source: ImageSource.gallery);

    if (pickerFile != null) {
      print(pickerFile.path);
      storyImage = File(pickerFile.path);
      emit(PickedStoryImageSuccessState());
    } else {
      print('No Image Selected');
      emit(PickedStoryImageErrorState());
    }
  }

  // // upload profile image
  String storyImageUrl = '';

  List<String> stories = [];
  void uploadStoryImage() {
    emit(UploadStoryLoadingState());
    FirebaseStorage.instance
        .ref()
        .child(Uri.file(storyImage!.path).pathSegments.last)
        .putFile(storyImage!)
        .then((value) {
      value.ref.getDownloadURL().then((value) {
        storyImageUrl = value;
        stories.add(value);
        print(storyImageUrl);
        emit(UploadStorySuccessState());
        getStory();
      }).catchError((Error) {
        print(Error.toString());
        emit(UploadStoryErrorState());
      });
      // updateUserImage();
    }).catchError((Error) {
      print(Error.toString());
      emit(UploadStoryErrorState2());
    });
  }

  void createStory({
    required String text,
    required String photo,
    String? storyId,
    DateTime? dateTime,
  }) {
    story_model model = story_model(
      text,
      dateTime,
      photo,
      storyId
    );
    FirebaseFirestore.instance
        .collection('users')
        .doc(user!.uid)
        .collection('stories')
        .doc(storyId)
        .set(model.toMap())
        .then((value) {
      uploadStoryImage();
    }).catchError((onError) {
      print(onError.toString());
      emit(CreateStoryErrorState(onError.toString()));
    });
  }

  List<story_model> storyList = [];

  void getStory() {
    emit(GetStoryLoadingState());
    FirebaseFirestore.instance
        .collection('users')
        .doc(user!.uid)
        .collection('stories')
        .get()
        .then((value) {
      storyList = [];
      value.docs.forEach((element) {
        storyList.add(story_model.fromJson(element.data()));
      });
      emit(GetStorySuccessState());
    }).catchError((onError) {
      print(onError.toString());
      emit(GetStoryErrorState(onError.toString()));
    });
  }
}
