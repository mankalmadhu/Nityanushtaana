import 'package:flutter/material.dart';

class RitualThemeColors extends ThemeExtension<RitualThemeColors> {
  final Color headingColor;
  final Color verseColor;
  final Color instructionColor;
  final Color vedicInstructionColor;
  final Color appBarColor;
  final Color pageIndicatorActiveColor;
  final Color pageIndicatorInactiveColor;
  final Color dividerColor;

  const RitualThemeColors({
    required this.headingColor,
    required this.verseColor,
    required this.instructionColor,
    required this.vedicInstructionColor,
    required this.appBarColor,
    required this.pageIndicatorActiveColor,
    required this.pageIndicatorInactiveColor,
    required this.dividerColor,
  });

  @override
  RitualThemeColors copyWith({
    Color? headingColor,
    Color? verseColor,
    Color? instructionColor,
    Color? vedicInstructionColor,
    Color? appBarColor,
    Color? pageIndicatorActiveColor,
    Color? pageIndicatorInactiveColor,
    Color? dividerColor,
  }) {
    return RitualThemeColors(
      headingColor: headingColor ?? this.headingColor,
      verseColor: verseColor ?? this.verseColor,
      instructionColor: instructionColor ?? this.instructionColor,
      vedicInstructionColor:
          vedicInstructionColor ?? this.vedicInstructionColor,
      appBarColor: appBarColor ?? this.appBarColor,
      pageIndicatorActiveColor:
          pageIndicatorActiveColor ?? this.pageIndicatorActiveColor,
      pageIndicatorInactiveColor:
          pageIndicatorInactiveColor ?? this.pageIndicatorInactiveColor,
      dividerColor: dividerColor ?? this.dividerColor,
    );
  }

  @override
  RitualThemeColors lerp(ThemeExtension<RitualThemeColors>? other, double t) {
    if (other is! RitualThemeColors) {
      return this;
    }
    return RitualThemeColors(
      headingColor: Color.lerp(headingColor, other.headingColor, t)!,
      verseColor: Color.lerp(verseColor, other.verseColor, t)!,
      instructionColor: Color.lerp(
        instructionColor,
        other.instructionColor,
        t,
      )!,
      vedicInstructionColor: Color.lerp(
        vedicInstructionColor,
        other.vedicInstructionColor,
        t,
      )!,
      appBarColor: Color.lerp(appBarColor, other.appBarColor, t)!,
      pageIndicatorActiveColor: Color.lerp(
        pageIndicatorActiveColor,
        other.pageIndicatorActiveColor,
        t,
      )!,
      pageIndicatorInactiveColor: Color.lerp(
        pageIndicatorInactiveColor,
        other.pageIndicatorInactiveColor,
        t,
      )!,
      dividerColor: Color.lerp(dividerColor, other.dividerColor, t)!,
    );
  }
}
