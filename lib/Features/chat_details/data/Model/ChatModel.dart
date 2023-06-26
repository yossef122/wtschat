import 'dart:core';

class ChatModel{
  String? senderId;
  String? receiverId;
  String? text;
  String? dateTime;

  ChatModel({
    this.senderId,
    this.receiverId,
    this.text,
    this.dateTime,

  });

  ChatModel.fromJson(Map<String,dynamic>?json){
    senderId=json!['senderId'];
    receiverId=json['receiverId'];
    text=json['text'];
    dateTime=json['dateTime'];

  }

  Map<String,dynamic> toMap(){
    return{
      'senderId':senderId,
      'receiverId':receiverId,
      'text':text,
      'dateTime':dateTime,
    };
  }

}