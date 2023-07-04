
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

String? phoneNumber='011534378';

bool showEmojiPicker =false;
bool showKeyboard =false;
FocusNode focusNode=FocusNode();

String? otpCode;

User?user;
String?receiverUserId;