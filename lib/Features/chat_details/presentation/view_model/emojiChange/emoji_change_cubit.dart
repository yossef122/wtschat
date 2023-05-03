import 'package:bloc/bloc.dart';
import 'package:chatapp/core/utils/Constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'emoji_change_state.dart';

class EmojiChangeCubit extends Cubit<EmojiChangeState> {
  EmojiChangeCubit() : super(EmojiChangeInitial());

  static EmojiChangeCubit get(context) => BlocProvider.of(context);

  emojiChange(bool emojiPicker) {
    if (emojiPicker == true) {
      showEmojiPicker = false;
    } else {
      showEmojiPicker = true;
    }
    // showEmojiPicker = !EmojiPicker;
    emit(EmojiChangeStateSuccess());
  }

  keyboardChange(FocusNode focusNode) {
    if (focusNode.hasFocus) {
      showKeyboard = true;
    } else {
      showKeyboard = false;
    }
    // showEmojiPicker = !EmojiPicker;
    emit(EmojiChangeStateSuccess());
  }
}
