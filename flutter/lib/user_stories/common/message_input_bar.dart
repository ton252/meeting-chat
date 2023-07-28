import 'package:flutter/cupertino.dart';
import 'package:meeting_chat/user_stories/common/send_button.dart';
import 'package:meeting_chat/user_stories/uikit/color_pallete.dart';

class MessageInputBar extends StatelessWidget {
  final FocusNode? focusNode;
  final TextEditingController? controller;

  const MessageInputBar({
    super.key,
    this.focusNode,
    this.controller,
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
        child: Row(children: [
          Expanded(child: __textField()),
          const SendButton(),
        ]));
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
          decoration: null,
          padding: const EdgeInsets.symmetric(
            vertical: 7.0,
            horizontal: 15.0,
          ),
          style: TextStyle(
            color: ColorPalette.light.text,
            fontSize: 17,
          )),
    );
  }
}
