import 'dart:convert';
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_rig_sandhya/core/models/component.dart';

void main() {
  group('Data Layer - Kannada Content Sanitization', () {
    test('madhyahnika_samarpana content has not been accidentally modified', () {
      final file = File('assets/i18n/kn/components/madhyahnika_samarpana.json');
      final component = Component.fromJson(jsonDecode(file.readAsStringSync()));
      expect(component.blocks.length, 2);
      expect(component.blocks[0].type, 'heading');
      expect(component.blocks[0].text, 'ಸಮರ್ಪಣೆ');
      expect(component.blocks[1].type, 'verse_viniyoga');
      expect(
        component.blocks[1].text,
        'ಅನೇನ ಮಾಧ್ಯಾಹ್ನಿಕ ಸಂಧ್ಯಾವಂದನೇನ ಭಗವಾನ್ ಸರ್ವಾತ್ಮಕಃ ಶ್ರೀ ತೇಜೋ ಲಕ್ಷ್ಮೀನೃಸಿಂಹ ಸ್ವಾಮಿನಃ ಪ್ರೀಣಾತು ।',
      );
    });
  });
}
