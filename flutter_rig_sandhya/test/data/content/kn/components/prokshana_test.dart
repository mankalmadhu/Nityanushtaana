import 'dart:convert';
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_rig_sandhya/core/models/component.dart';

void main() {
  group('Data Layer - Kannada Content Sanitization', () {
    test('prokshana content has not been accidentally modified', () {
      final file = File('assets/i18n/kn/components/prokshana.json');
      final component = Component.fromJson(jsonDecode(file.readAsStringSync()));
      expect(component.blocks.length, 2);
      expect(component.blocks[0].type, 'heading');
      expect(component.blocks[0].text, 'ಪ್ರೋಕ್ಷಣ');
      expect(component.blocks[1].type, 'verse_viniyoga');
      expect(
        component.blocks[1].text,
        'ಅಪವಿತ್ರಃ ಪವಿತ್ರೋವಾ ಸರ್ವಾವಸ್ಥಾಂ ಗತೋಽಪಿವಾ ।\nಯಸ್ಸ್ಮರೇತ್ ಪುಂಡರೀಕಾಕ್ಷಂ ಸಬಾಹ್ಯಾಭ್ಯಂತರಶ್ಶುಚಿಃ ।',
      );
    });
  });
}
