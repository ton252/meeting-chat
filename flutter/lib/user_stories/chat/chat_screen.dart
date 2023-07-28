import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meeting_chat/user_stories/common/message_input_bar.dart';

import 'income_message_cell.dart';
import 'outcome_message_cell.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    // final height = MediaQuery.of(context).size.height;
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text("Chat"),
        backgroundColor: Colors.white,
      ),
      child: GestureDetector(
        onTap: () => _unfocus(),
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Scrollbar(
                  child: CustomScrollView(
                    reverse: true,
                    keyboardDismissBehavior:
                        ScrollViewKeyboardDismissBehavior.onDrag,
                    slivers: [
                      SliverList(
                        delegate: SliverChildBuilderDelegate((context, index) {
                          final isOutcome = (index % 2) == 0;
                          final body = generateRandomString(1, 200);
                          return isOutcome
                              ? OutcomeMessage(body: body)
                              : IncomeMessage(body: body);
                        }, childCount: 100),
                      ),
                    ],
                  ),
                ),
              ),
              const MessageInputBar(),
              Container(color: Colors.green),
            ],
          ),
        ),
      ),
    );
  }

  void _unfocus() {
    FocusManager.instance.primaryFocus?.unfocus();
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
