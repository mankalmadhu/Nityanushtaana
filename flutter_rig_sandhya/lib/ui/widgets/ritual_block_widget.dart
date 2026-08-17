import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../core/models/component.dart';
import '../../core/theme.dart';
import '../../core/app_settings.dart';

class RitualBlockWidget extends StatelessWidget {
  final Block block;

  const RitualBlockWidget({super.key, required this.block});

  TextStyle _getStyle(
    BuildContext context,
    double fontSize,
    Color? color, {
    FontStyle? fontStyle,
  }) {
    final useGoogleFonts = context.watch<AppSettings>().useGoogleFonts;
    if (useGoogleFonts) {
      return GoogleFonts.notoSansKannada(
        fontSize: fontSize,
        color: color,
        fontStyle: fontStyle,
        height: 1.5,
      );
    } else {
      return TextStyle(
        fontFamily: 'Ganapati',
        fontSize: fontSize,
        color: color,
        fontStyle: fontStyle,
        height: 50 / fontSize,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final themeColors = Theme.of(context).extension<RitualThemeColors>();

    if (block.type == 'heading') {
      return Padding(
        padding: const EdgeInsets.only(left: 12.0, top: 4.0, bottom: 4.0),
        child: Text(
          block.text,
          textAlign: TextAlign.justify,
          style: _getStyle(context, 19, themeColors?.headingColor),
        ),
      );
    }

    if (block.type == 'verse_sankalpa') {
      return Padding(
        padding: const EdgeInsets.only(left: 12.0, top: 4.0, bottom: 4.0),
        child: Text(
          block.text,
          textAlign: TextAlign.justify,
          style: _getStyle(context, 18, themeColors?.verseColor),
        ),
      );
    }

    if (block.type == 'verse_viniyoga') {
      return Padding(
        padding: const EdgeInsets.only(left: 12.0, top: 4.0, bottom: 4.0),
        child: Text(
          block.text,
          textAlign: TextAlign.justify,
          style: _getStyle(context, 18, themeColors?.instructionColor),
        ),
      );
    }

    if (block.type == 'instruction') {
      String displayText = block.text;
      if (!displayText.startsWith('(')) displayText = '(' + displayText;
      if (!displayText.endsWith(')')) displayText = displayText + ')';

      return Padding(
        padding: const EdgeInsets.only(left: 12.0, top: 4.0, bottom: 4.0),
        child: Text(
          displayText,
          textAlign: TextAlign.justify,
          style: _getStyle(
            context,
            18,
            themeColors?.instructionColor.withValues(alpha: 0.75),
            fontStyle: FontStyle.italic,
          ),
        ),
      );
    }

    // Default fallback
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        block.text,
        style: _getStyle(context, 18, themeColors?.verseColor),
      ),
    );
  }
}
