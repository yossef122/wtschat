import 'package:chatapp/Features/chat_details/presentation/view/widgets/chatDetails_body.dart';
import 'package:flutter/material.dart';

class ChatDetailsScreen extends StatelessWidget {
   ChatDetailsScreen({Key? key, required this.receiverId}) : super(key: key);
  String? receiverId;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ChatDetailsScreenBody(receiverId: receiverId,),
    );
  }
}
