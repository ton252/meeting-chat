import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'income_message_cell.dart';
import 'outcome_message_cell.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final height = MediaQuery.of(context).size.height;
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text("Chat"),
        backgroundColor: Colors.white,
      ),
      child: Scrollbar(
        child: CustomScrollView(slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              final isOutcome = (index % 2) == 0;
              final body = generateRandomString(1, 200);
              return isOutcome
                  ? OutcomeMessage(body: body)
                  : IncomeMessage(body: body);
            }, childCount: 100),
          )
        ]),
      ),
    );
  }
}

String generateRandomString(int minLength, int maxLength) {
  const String chars =
      'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
  Random rnd = Random();

  int length = minLength + rnd.nextInt(maxLength - minLength + 1);

  String result = '';
  for (int i = 0; i < length; i++) {
    result += chars[rnd.nextInt(chars.length)];
  }
  return result;
}
