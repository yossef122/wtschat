import 'package:chatapp/Features/chat_details/presentation/view/widgets/chatDetails_body.dart';
import 'package:chatapp/Features/phone_authentication/data/Model/UserData.dart';
import 'package:flutter/material.dart';

class ChatDetailsScreen extends StatelessWidget {
   ChatDetailsScreen({Key? key, required this.receiverData/*,required this.receiverName*/}) : super(key: key);
  // String? receiverId;
   UserData? receiverData;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ChatDetailsScreenBody(receiverData: receiverData/*, receiverName: receiverName,*/),
    );
  }
}
