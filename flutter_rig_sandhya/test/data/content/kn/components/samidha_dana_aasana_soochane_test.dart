import 'dart:convert';
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_rig_sandhya/core/models/component.dart';

void main() {
  group('Data Layer - Kannada Content Sanitization', () {
    test(
      'samidha_dana_aasana_soochane content has not been accidentally modified',
      () {
        final file = File(
          'assets/i18n/kn/components/samidha_dana_aasana_soochane.json',
        );
        final component = Component.fromJson(
          jsonDecode(file.readAsStringSync()),
        );
        expect(component.blocks.length, 1);
        expect(component.blocks[0].type, 'instruction');
        expect(
          component.blocks[0].text,
          'ಅಗ್ನಿಯನ್ನು ಪೂರ್ವ/ಉತ್ತರ ಅಭಿಮುಖವಾಗಿ ಇರಿಸಿಕೊಂಡು, ಅಗ್ನಿಗೆ ಅಭಿಮುಖವಾಗಿ ಕುಳಿತುಕೊಳ್ಳುವುದು',
        );
      },
    );
  });
}
