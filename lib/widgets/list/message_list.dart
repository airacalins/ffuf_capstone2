// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_playground/providers/providers.dart';
import 'package:flutter_playground/themes/themes.dart';

class MessageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final messages =
        Provider.of<MessageProvider>(context).getLastMessagesPerUser('1');
    final usersData = Provider.of<UserProvider>(context);
    final textTheme = Theme.of(context).textTheme;

    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: ((context, index) {
        final user = usersData.getUserById(messages[index].receiverId);
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(user.imageUrl),
          ),
          title: Text('${user.firstName} ${user.lastName}'),
          subtitle: Text(messages[index].message),
          trailing: CircleAvatar(
            radius: 12,
            backgroundColor: ColorTheme.primaryColor,
            child: Text(
              '2',
              style: textTheme.caption!.merge(
                const TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
