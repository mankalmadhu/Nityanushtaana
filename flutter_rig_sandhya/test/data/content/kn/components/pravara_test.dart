import 'dart:convert';
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_rig_sandhya/core/models/component.dart';

void main() {
  group('Data Layer - Kannada Content Sanitization', () {
    test('pravara content has not been accidentally modified', () {
      final file = File('assets/i18n/kn/components/pravara.json');
      final component = Component.fromJson(jsonDecode(file.readAsStringSync()));
      expect(component.blocks.length, 1);
      expect(component.blocks[0].type, 'verse_viniyoga');
      expect(
        component.blocks[0].text,
        'ಚತುಸ್ಸಾಗರ ಪರ್ಯ೦ತ೦ ಗೋ ಬ್ರಾಹ್ಮಣೇಭ್ಯಃ ಶುಭ೦ ಭವತು ವೈಶ್ವಾಮಿತ್ರ ಅಘಮರ್ಷಣ ಕೌಶಿಕ ತ್ರಯಾರ್ಷೇಯ ಪ್ರವರಾನ್ವಿತ ಕೌಶಿಕ ಸಗೋತ್ರಃ ಆಶ್ವಲಾಯನ ಸೂತ್ರಃ ಋಕ್ ಶಾಖಾ ಅಧ್ಯಾಯಿ ಶ್ರೀ ತೇಜೋ __ ಶರ್ಮ ಅಹ೦ಭೋ ಅಭಿವಾದಯೇ ॥',
      );
    });
  });
}
