import 'package:flutter_playground/models/models.dart';

class MessagesData {
  static List<Message> messages = [
    Message(
      id: 1,
      receiverId: 2,
      senderId: 1,
      message: 'Hi there!',
      date: DateTime.now(),
    ),
    Message(
      id: 2,
      receiverId: 3,
      senderId: 1,
      message: 'A wonderful serenity has taken',
      date: DateTime.now(),
    ),
    Message(
      id: 3,
      receiverId: 4,
      senderId: 1,
      message: 'What about Paypal?',
      date: DateTime.now(),
    ),
    Message(
      id: 4,
      receiverId: 5,
      senderId: 1,
      message: 'We shoud move forword to talk with',
      date: DateTime.now(),
    ),
    Message(
      id: 5,
      receiverId: 6,
      senderId: 1,
      message: 'Move in some special work recently so',
      date: DateTime.now(),
    ),
    Message(
      id: 6,
      receiverId: 1,
      senderId: 2,
      message: 'Thanks!',
      date: DateTime.now(),
    ),
  ];
}
