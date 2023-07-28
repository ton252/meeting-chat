import 'package:flutter/cupertino.dart';
import 'package:meeting_chat/user_stories/common/send_button.dart';
import 'package:meeting_chat/user_stories/uikit/color_pallete.dart';

class MessageInputBar extends StatelessWidget {
  final FocusNode? focusNode;
  final TextEditingController? controller;
  final String? placeholder;
  final bool onSendEnabled;
  final VoidCallback? onSendPressed;

  const MessageInputBar({
    super.key,
    this.focusNode,
    required this.controller,
    this.placeholder = "Message",
    this.onSendEnabled = true,
    this.onSendPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorPalette.light.background,
      padding: const EdgeInsets.only(
        top: 8.0,
        bottom: 8.0,
        left: 16.0,
        right: 0.0,
      ),
      child: Row(
        children: [
          Expanded(child: __textField()),
          SendButton(
            enabled: onSendEnabled,
            onPressed: onSendPressed,
          ),
        ],
      ),
    );
  }

  @widgetFactory
  Widget __textField() {
    return Container(
      decoration: BoxDecoration(
        color: ColorPalette.light.secondaryBackground,
        borderRadius: BorderRadius.circular(24.0),
        border: Border.all(
          color: ColorPalette.light.border,
          width: 1.0,
        ),
      ),
      child: CupertinoTextField(
        focusNode: focusNode,
        controller: controller,
        placeholder: placeholder,
        decoration: null,
        minLines: 1,
        maxLines: 6,
        padding: const EdgeInsets.symmetric(
          vertical: 7.0,
          horizontal: 15.0,
        ),
        style: TextStyle(
          color: ColorPalette.light.text,
          fontSize: 17,
        ),
        placeholderStyle: TextStyle(
          color: ColorPalette.light.textSecondary,
          fontSize: 17,
        ),
      ),
    );
  }
}
