import 'package:flutter/material.dart';
import 'package:meeting_chat/user_stories/common/message_view.dart';

class OutcomeMessage extends StatelessWidget {
  final String? body;

  const OutcomeMessage({
    super.key,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 4.0,
        bottom: 4.0,
        left: 60.0,
        right: 16.0,
      ),
      alignment: Alignment.centerRight,
      child: MessageView(
        body: body ?? "",
        textColor: Colors.white,
        backgroundColor: Colors.blue,
      ),
    );
  }
}
