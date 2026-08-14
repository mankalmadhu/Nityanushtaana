import 'dart:convert';
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_rig_sandhya/core/models/component.dart';

void main() {
  group('Data Layer - Kannada Content Sanitization', () {
    test('pratah_samidha_dana_samarpana content has not been accidentally modified', () {
      final file = File('assets/i18n/kn/components/pratah_samidha_dana_samarpana.json');
      final component = Component.fromJson(jsonDecode(file.readAsStringSync()));
      expect(component.blocks.length, 2);
      expect(component.blocks[0].type, 'heading');
      expect(component.blocks[0].text, 'ಸಮರ್ಪಣೆ');
      expect(component.blocks[1].type, 'verse_viniyoga');
      expect(component.blocks[1].text, 'ಅನೇನ ಪ್ರಾತಸ್ಸಮಿಧಾದಾನೇನ ಭಗವಾನ್ ಸರ್ವಾತ್ಮಕಃ ಶ್ರೀ ತೇಜೋ ಲಕ್ಷ್ಮೀನೃಸಿ೦ಹ ಸ್ವಾಮಿನಃ ಪ್ರೀಣಾತು |');
    });
  });
}
