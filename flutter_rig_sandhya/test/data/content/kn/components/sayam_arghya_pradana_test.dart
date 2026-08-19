import 'dart:convert';
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_rig_sandhya/core/models/component.dart';

void main() {
  group('Data Layer - Kannada Content Sanitization', () {
    test('sayam_arghya_pradana content has not been accidentally modified', () {
      final file = File('assets/i18n/kn/components/sayam_arghya_pradana.json');
      final component = Component.fromJson(jsonDecode(file.readAsStringSync()));
      expect(component.blocks.length, 10);
      expect(component.blocks[0].type, 'heading');
      expect(component.blocks[0].text, 'ಅರ್ಘ್ಯ ಪ್ರದಾನ');
      expect(component.blocks[1].type, 'instruction');
      expect(component.blocks[1].text, 'ಪಶ್ಚಿಮಾಭಿಮುಖವಾಗಿ ನಿಂತು');
      expect(component.blocks[2].type, 'verse_sankalpa');
      expect(component.blocks[2].text, 'ತತ್ಸವಿತುರ್ವಿಶ್ವಾಮಿತ್ರಸ್ಸವಿತಾಗಾಯತ್ರೀ');
      expect(component.blocks[3].type, 'verse_viniyoga');
      expect(
        component.blocks[3].text,
        'ಓಂ ತತ್ಸ॑ವಿ॒ತುರ್ವರೇ᳚ಣ್ಯಂ॒ ಭರ್ಗೋ᳚ ದೇ॒ವಸ್ಯ॑ ಧೀಮಹಿ । ಧಿಯೋ॒ ಯೋ ನಃ॑ ಪ್ರಚೋ॒ದಯಾ᳚ತ್ ॥',
      );
      expect(component.blocks[4].type, 'verse_viniyoga');
      expect(
        component.blocks[4].text,
        'ಓ॒ಮಾಪೋ॒ ಜ್ಯೋತೀ॒ರಸೋ॒ಽಮೃತಂ॒ ಬ್ರಹ್ಮ॒ ಭೂರ್ಭುವ॒ಸ್ಸ್ವರೋಂ॥',
      );
      expect(component.blocks[5].type, 'instruction');
      expect(component.blocks[5].text, '(೩ ಬಾರಿ)');
      expect(component.blocks[6].type, 'verse_sankalpa');
      expect(
        component.blocks[6].text,
        'ಕಾಲಾತೀತ ದೋಷ ಪ್ರಾಯಶ್ಚಿತ್ತಾರ್ಥಂ ಅರ್ಘ್ಯ ಪ್ರದಾನಂ ಕರಿಷ್ಯೇ ।',
      );
      expect(component.blocks[7].type, 'verse_viniyoga');
      expect(
        component.blocks[7].text,
        'ಓಂ ತತ್ಸ॑ವಿ॒ತುರ್ವರೇ᳚ಣ್ಯಂ॒ ಭರ್ಗೋ᳚ ದೇ॒ವಸ್ಯ॑ ಧೀಮಹಿ । ಧಿಯೋ॒ ಯೋ ನಃ॑ ಪ್ರಚೋ॒ದಯಾ᳚ತ್ ॥',
      );
      expect(component.blocks[8].type, 'verse_viniyoga');
      expect(
        component.blocks[8].text,
        'ಓ॒ಮಾಪೋ॒ ಜ್ಯೋತೀ॒ರಸೋ॒ಽಮೃತಂ॒ ಬ್ರಹ್ಮ॒ ಭೂರ್ಭುವ॒ಸ್ಸ್ವರೋಂ॥',
      );
      expect(component.blocks[9].type, 'verse_viniyoga');
      expect(
        component.blocks[9].text,
        'ಓಂ ಉದ್ಘೇದ॒ಭಿ ಶ್ರು॒ತಾಮ॑ಘಂ ವೃಷ॒ಭಂ ನರ್ಯಾ᳚ಪಸಮ್ । ಅಸ್ತಾ᳚ರಮೇಷಿ ಸೂರ್ಯ ॥ ಸೂರ್ಯ ಅಹಂ ಸೂರ್ಯಃ ।ಅಸಾವಾದಿತ್ಯೋ ಬ್ರಹ್ಮ ॥',
      );
    });
  });
}
