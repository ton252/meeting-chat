import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meeting_chat/models/message.dart';
import 'package:meeting_chat/user_stories/common/message_input_bar.dart';

import 'outcome_message_cell.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List<Message> _messages = [];
  final _listKey = GlobalKey<SliverAnimatedListState>();
  final _messageController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _messageController.addListener(_onTextUpdate);
  }

  @override
  void dispose() {
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                      SliverAnimatedList(
                        key: _listKey,
                        initialItemCount: _messages.length,
                        itemBuilder: ((context, index, animation) {
                          final msg = _messages[index];
                          return _animatedTransition(
                            animation: animation,
                            widget: OutcomeMessage(body: msg.body),
                          );
                        }),
                      ),
                    ],
                  ),
                ),
              ),
              MessageInputBar(
                controller: _messageController,
                onSendEnabled: _messageController.text.isNotEmpty,
                onSendPressed: () {
                  _addMessage(
                    Message(
                      date: DateTime.now(),
                      body: _messageController.text,
                      sender: "sender",
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _addMessage(Message msg) {
    _messageController.text = "";
    _messages.insert(0, msg);
    _listKey.currentState?.insertItem(0);
  }

  void _onTextUpdate() {
    setState(() {});
  }

  void _unfocus() {
    FocusManager.instance.primaryFocus?.unfocus();
  }

  Widget _animatedTransition({
    required Animation<double> animation,
    required Widget widget,
  }) {
    return SlideTransition(
      position: animation.drive(Tween<Offset>(
        begin: const Offset(0, 1),
        end: Offset.zero,
      ).chain(CurveTween(curve: Curves.easeInOut))),
      child: FadeTransition(
        opacity: animation,
        child: widget,
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
