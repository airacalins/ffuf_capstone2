// ignore_for_file: unrelated_type_equality_checks

import 'package:flutter/material.dart';

import 'package:flutter_playground/data/data.dart';
import 'package:flutter_playground/models/models.dart';

class MessageProvider with ChangeNotifier {
  final List<Message> _messages = MessagesData.messages;

  List<Message> getMessageByUserId(String loginUserId) {
    return _messages
        .where((message) =>
            message.receiverId == loginUserId ||
            message.senderId == loginUserId)
        .toList();
  }

  List<Message> getLastMessagesPerUser(String loginUserId) {
    final userMessages = getMessageByUserId(loginUserId);
    final senderIds = userMessages.map((i) => i.senderId);
    final receiverIds = userMessages.map((i) => i.receiverId);
    final userIds = [senderIds, receiverIds]
        .where((i) => i != loginUserId)
        .toSet()
        .toList();
    final List<Message> lastMessages = List.empty(growable: true);

    userIds.forEach((userId) {
      final lastMessage = userMessages.lastWhere((message) =>
          message.receiverId == userId || message.senderId == userId);
      lastMessages.add(lastMessage);
    });

    return lastMessages;
  }
}
