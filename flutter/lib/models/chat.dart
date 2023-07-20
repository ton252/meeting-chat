import 'package:meeting_chat/models/message.dart';

class Chat {
  final String receiver;
  final List<Message> messages;

  const Chat({
    required this.receiver,
    required this.messages,
  });
}


// class Message {
//   final DateTime date;
//   final String body;
//   final String sender;

//   Message({
//     required this.date,
//     required this.body,
//     required this.sender,
//   });