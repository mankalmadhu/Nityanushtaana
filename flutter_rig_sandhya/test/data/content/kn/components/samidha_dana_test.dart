import 'dart:convert';
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_rig_sandhya/core/models/component.dart';

void main() {
  group('Data Layer - Kannada Content Sanitization', () {
    test('samidha_dana content has not been accidentally modified', () {
      final file = File('assets/i18n/kn/components/samidha_dana.json');
      final component = Component.fromJson(jsonDecode(file.readAsStringSync()));
      expect(component.blocks.length, 7);
      expect(component.blocks[0].type, 'heading');
      expect(component.blocks[0].text, 'ಸಮಿಧಾದಾನ');
      expect(component.blocks[1].type, 'verse_sankalpa');
      expect(
        component.blocks[1].text,
        'ಅಗ್ನಯೇ ಸಮಿಧಮಿತ್ಯಸ್ಯ ಹಿರಣ್ಯಗರ್ಭಃ ಅಗ್ನಿಃ ಬೃಹತೀ ಸಮಿಧಾದಾನೇ ವಿನಿಯೋಗಃ ।',
      );
      expect(component.blocks[2].type, 'verse_viniyoga');
      expect(
        component.blocks[2].text,
        'ಓಂ ಅ॒ಗ್ನಯೇ᳚ ಸ॒ಮಿಧ॒ಮಾಹಾ᳚ರ್ಷಂ ಮಹ॒ತೇ ಜಾ॒ತವೇ᳚ದಸೇ ।\nತಯಾ॒ ತ್ವಮ॑ಗ್ನೇ॒ ವರ್ಧ॑ಸ್ವ ಸಮಿ॒ಧಾ ಬ್ರಹ್ಮ॑ಣಾ ವ॒ಯಂ ಸ್ವಾಹಾ᳚ ।',
      );
      expect(component.blocks[3].type, 'verse_viniyoga');
      expect(component.blocks[3].text, 'ಅಗ್ನಯೇ ಜಾತವೇದಸ ಇದಂ ನಮಮ ।');
      expect(component.blocks[4].type, 'instruction');
      expect(component.blocks[4].text, '(ಹಸ್ತಂ ಪ್ರಕ್ಷಾಳ್ಯ)');
      expect(component.blocks[5].type, 'verse_viniyoga');
      expect(component.blocks[5].text, 'ಓಂ ತೇಜಸಾ ಮಾ ಸಮನಜ್ಮಿ ।');
      expect(component.blocks[6].type, 'instruction');
      expect(component.blocks[6].text, '(ಮೂರು ಬಾರಿ)');
    });
  });
}
