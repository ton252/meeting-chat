import 'package:flutter/material.dart';

class MessageView extends StatelessWidget {
  final String body;

  final Color textColor;
  final Color backgroundColor;

  const MessageView({
    super.key,
    required this.body,
    this.textColor = Colors.black,
    this.backgroundColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18.0),
        color: backgroundColor,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 12.0,
      ),
      child: Text(body,
          style: TextStyle(
            fontSize: 18,
            color: textColor,
          )),
    );
  }
}
