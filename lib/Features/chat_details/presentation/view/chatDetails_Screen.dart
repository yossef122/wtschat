import 'package:chatapp/Features/chat_details/presentation/view/widgets/chatDetails_body.dart';
import 'package:flutter/material.dart';

class ChatDetailsScreen extends StatelessWidget {
  const ChatDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ChatDetailsScreenBody(),
    );
  }
}
