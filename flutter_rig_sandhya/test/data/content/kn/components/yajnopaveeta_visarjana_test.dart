import 'dart:convert';
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_rig_sandhya/core/models/component.dart';

void main() {
  group('Data Layer - Kannada Content Sanitization', () {
    test('yajnopaveeta_visarjana content has not been accidentally modified', () {
      final file = File(
        'assets/i18n/kn/components/yajnopaveeta_visarjana.json',
      );
      final component = Component.fromJson(jsonDecode(file.readAsStringSync()));
      expect(component.blocks.length, 2);
      expect(component.blocks[0].type, 'heading');
      expect(component.blocks[0].text, 'ವಿಸರ್ಜನ');
      expect(component.blocks[1].type, 'verse_viniyoga');
      expect(
        component.blocks[1].text,
        'ಉಪವೀತ೦ ಭಿನ್ನತ೦ತು೦ ಜೀರ್ಣ ಕಶ್ಮಲದೊಷಿತ೦ ।\nವಿಸೃಜಾಮಿ ಯಶೋಬ್ರಹ್ಮನ್ ವರ್ಚೋ ದೀರ್ಘಾಯುರಸ್ತು ಮೇ ॥ ಸಮುದ್ರ೦ ಗಚ್ಛಸ್ವಾಹಾ ॥',
      );
    });
  });
}
