import 'dart:convert';
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_rig_sandhya/core/models/component.dart';

void main() {
  group('Data Layer - Kannada Content Sanitization', () {
    test('yajnopaveeta_dharana content has not been accidentally modified', () {
      final file = File('assets/i18n/kn/components/yajnopaveeta_dharana.json');
      final component = Component.fromJson(jsonDecode(file.readAsStringSync()));
      expect(component.blocks.length, 3);
      expect(component.blocks[0].type, 'heading');
      expect(component.blocks[0].text, 'ಧಾರಣ');
      expect(component.blocks[1].type, 'verse_sankalpa');
      expect(
        component.blocks[1].text,
        'ಯಜ್ಞೋಪವೀತಮಿತ್ಯಸ್ಯ ಪರಬ್ರಹ್ಮಾ ಪರಮಾತ್ಮಾ ತ್ರಿಷ್ಟುಪ್,ಯಜ್ಞೋಪವೀತ ಧಾರಣೇ ವಿನಿಯೋಗಃ ॥',
      );
      expect(component.blocks[2].type, 'verse_viniyoga');
      expect(
        component.blocks[2].text,
        'ಯ॒ಜ್ಞೋ॒ಪ॒ವೀ॒ತಂ ಪ॒ರಮಂ᳚ ಪವಿ॒ತ್ರಂ ಪ್ರ॒ಜಾಪ॑ತೇರ್ಯತ್ಸ॒ಹಜಂ᳚ ಪು॒ರಸ್ತಾ᳚ತ್ ।\nಆಯು॑ಷ್ಯಮಗ್ರಿ॒ಯಂ॒ ಪ್ರ॒ತಿಮುಂ॑ಚ ಶು॑ಭ್ರಂ ಯ॑ಜ್ಞೋಪವೀ॒ತಂ ಬ॒ಲಮ॑ಸ್ತು॒ ತೇಜಃ॑ ॥',
      );
    });
  });
}
