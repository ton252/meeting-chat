import 'dart:ui';

class ColorPalette {
  final Color text;
  final Color textSecondary;
  final Color border;
  final Color primary;
  final Color contrast;
  final Color background;
  final Color secondaryBackground;

  const ColorPalette({
    required this.text,
    required this.textSecondary,
    required this.border,
    required this.primary,
    required this.contrast,
    required this.background,
    required this.secondaryBackground,
  });

  static ColorPalette get light {
    return const ColorPalette(
      text: Color(0xFF000000),
      textSecondary: Color(0xFF818A96),
      border: Color(0xFFE1E3E6),
      primary: Color(0xFF4586E4),
      contrast: Color(0xFFFFFFFF),
      background: Color(0xFFFFFFFF),
      secondaryBackground: Color(0xFFF2F3F5),
    );
  }
}
