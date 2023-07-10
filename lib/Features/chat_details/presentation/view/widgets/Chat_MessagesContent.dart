import 'package:chatapp/Features/chat_details/data/Model/ChatModel.dart';
import 'package:chatapp/core/styles/colors.dart';
import 'package:chatapp/core/utils/Constants.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ChatMessagesContent extends StatelessWidget {
  ChatMessagesContent(
      {Key? key, required this.receiverId, required this.chatModel})
      : super(key: key);
  String? receiverId;
  ChatModel? chatModel;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: user!.uid == chatModel!.senderId
          ? EdgeInsets.only(right: width * .2, left: width * .03)
          : EdgeInsets.only(right: width * .03, left: width * .2),
      child: Container(
        width: 10,
        // height: 200,
        decoration: BoxDecoration(
          color: user!.uid != chatModel!.senderId
              ? defualtColor3()
              : Colors.grey[400] /*[200]!*/,
          border: Border.all(
            width: 1,
            color: Colors.grey[200]!,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: user!.uid != chatModel!.senderId
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 10, right: 15),
                    child: Text(
                      chatModel!.text!,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          returnTime(chatModel!.dateTime!),
                          style: const TextStyle(
                            fontSize: 13,
                            color: Colors.grey,
                          ),
                        ),
                        const Icon(
                          Icons.check,
                          color: Colors.blue,
                          size: 15,
                        )
                      ],
                    ),
                  ),
                ],
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 15, right: 10),
                    child: Text(chatModel!.text!,
                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                        textAlign: TextAlign.start),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          returnTime(chatModel!.dateTime!),
                          style: const TextStyle(
                            fontSize: 13,
                            color: Colors.grey,
                          ),
                        ),
                        const Icon(
                          Icons.check,
                          color: Colors.blue,
                          size: 15,
                        )
                      ],
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}

String returnTime(String date) {
  var time = date.split(" ")[1];
  time = time.substring(0, 5);
  if (int.parse(time.substring(0, 2)) > 12) {
    var hour = (int.parse(time.substring(0, 2)) - 12).toString();
    var minute = time.substring(2, 5);
    time = hour + minute;
    return time;
  } else if (int.parse(time.substring(0, 2)) == 0) {
    var hour = (int.parse(time.substring(0, 2)) + 12).toString();
    var minute = time.substring(2, 5);
    time = hour + minute;
    return time;
  } else {
    return time.substring(0, 5);
  }
}
