import 'package:chatapp/Features/chat_details/presentation/view/widgets/chatDetails_body.dart';
import 'package:flutter/material.dart';

class ChatDetailsScreen extends StatelessWidget {
   ChatDetailsScreen({Key? key, required this.receiverId,required this.receiverName}) : super(key: key);
  String? receiverId;
   String? receiverName;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ChatDetailsScreenBody(receiverId: receiverId, receiverName: receiverName,),
    );
  }
}
