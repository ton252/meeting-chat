import 'package:flutter/material.dart';
import 'package:meeting_chat/user_stories/common/message_view.dart';

class IncomeMessage extends StatelessWidget {
  final String body;

  const IncomeMessage({
    super.key,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 4.0,
        bottom: 4.0,
        left: 16.0,
        right: 60.0,
      ),
      alignment: Alignment.centerRight,
      child: MessageView(
        body: body,
        textColor: Colors.white,
        backgroundColor: Colors.grey,
      ),
    );
  }
}
