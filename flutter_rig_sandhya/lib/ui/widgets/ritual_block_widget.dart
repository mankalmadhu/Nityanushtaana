import 'package:flutter/material.dart';
import '../../core/models/component.dart';
import '../../core/theme.dart';

class RitualBlockWidget extends StatelessWidget {
  final Block block;

  const RitualBlockWidget({super.key, required this.block});

  @override
  Widget build(BuildContext context) {
    final themeColors = Theme.of(context).extension<RitualThemeColors>();

    if (block.type == 'heading') {
      return Padding(
        padding: const EdgeInsets.only(left: 12.0, top: 4.0, bottom: 4.0),
        child: Text(
          block.text,
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontFamily: 'Ganapati',
            fontSize: 19,
            height: 50 / 19,
            color: themeColors?.headingColor,
          ),
        ),
      );
    }

    if (block.type == 'verse_sankalpa') {
      return Padding(
        padding: const EdgeInsets.only(left: 12.0, top: 4.0, bottom: 4.0),
        child: Text(
          block.text,
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontFamily: 'Ganapati',
            fontSize: 18,
            height: 50 / 18,
            color: themeColors?.verseColor,
          ),
        ),
      );
    }

    if (block.type == 'verse_viniyoga') {
      return Padding(
        padding: const EdgeInsets.only(left: 12.0, top: 4.0, bottom: 4.0),
        child: Text(
          block.text,
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontFamily: 'Ganapati',
            fontSize: 18,
            height: 50 / 18,
            color: themeColors?.instructionColor,
          ),
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
          style: TextStyle(
            fontFamily: 'Ganapati',
            fontSize: 18,
            fontStyle: FontStyle.italic,
            height: 50 / 18,
            color: themeColors?.instructionColor?.withOpacity(0.75),
          ),
        ),
      );
    }

    // Default fallback
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(block.text, style: TextStyle(color: themeColors?.verseColor)),
    );
  }
}
