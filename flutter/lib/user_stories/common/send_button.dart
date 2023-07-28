import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meeting_chat/user_stories/uikit/color_pallete.dart';

class SendButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final bool enabled;

  const SendButton({
    super.key,
    this.enabled = true,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 8.0,
      ),
      onPressed: onPressed ?? () => {},
      child: Container(
        width: 34.0,
        height: 34.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22.0),
          color: ColorPalette.light.primary,
        ),
        alignment: Alignment.center,
        child: SvgPicture.asset(
          "assets/images/arrow_up.svg",
          colorFilter: ColorFilter.mode(
            ColorPalette.light.contrast,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }
}