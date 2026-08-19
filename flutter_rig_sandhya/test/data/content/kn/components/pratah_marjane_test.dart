import 'dart:convert';
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_rig_sandhya/core/models/component.dart';

void main() {
  group('Data Layer - Kannada Content Sanitization', () {
    test('pratah_marjane content has not been accidentally modified', () {
      final file = File('assets/i18n/kn/components/pratah_marjane.json');
      final component = Component.fromJson(jsonDecode(file.readAsStringSync()));
      expect(component.blocks.length, 6);
      expect(component.blocks[0].type, 'heading');
      expect(component.blocks[0].text, 'ಮಾರ್ಜನೆ');
      expect(component.blocks[1].type, 'verse_sankalpa');
      expect(
        component.blocks[1].text,
        'ಆಪೋಹಿಷ್ಠೇತಿ ತ್ರಿಚರ್ಚಸ್ಯ ಸೂಕ್ತಸ್ಯ, ಅಂಬರೀಶಃ ಸಿಂಧು ದ್ವೀಪ ಋಷಿಃ,\nಆಪೋ ದೇವತಾ, ಗಾಯತ್ರೀ ಛಂದಃ ಮಾರ್ಜನೇ ವಿನಿಯೋಗಃ ॥',
      );
      expect(component.blocks[2].type, 'verse_viniyoga');
      expect(
        component.blocks[2].text,
        'ಓಂ ಆಪೋ॒ಹಿಷ್ಠಾ ಮ॑ಯೋ॒ಭುವ॒ಸ್ತಾನ॑ ಊ॒ರ್ಜೇ ದ॑ಧಾತನ । ಮ॒ಹೇರಣಾ᳚ಯ॒ ಚಕ್ಷ॑ಸೇ ॥\nಯೋವಃ॑ ಶಿ॒ವತ॑ಮೋ॒ರಸ॒ಸ್ತಸ್ಯ॑ ಭಾಜಯತೇ॒ಹನಃ॑ । ಉ॒ಶ॒ತೀರಿ॑ವ ಮಾ॒ತರಃ॑ ।\nತಸ್ಮಾ॒ ಅರಂ᳚ಗ ಮಾ॒ಮವೋ॒ಯಸ್ಯ॒ಕ್ಷಯಾ᳚ಯ॒ ಜಿನ್ವ॑ಥ । ಆಪೋ᳚ ಜ॒ನಯ॑ಥಾಚನಃ ॥',
      );
      expect(component.blocks[3].type, 'heading');
      expect(component.blocks[3].text, 'ಅಭಿಮಂತ್ರಣೆ');
      expect(component.blocks[4].type, 'verse_sankalpa');
      expect(
        component.blocks[4].text,
        'ಸೂರ್ಯಶ್ಚೇತ್ಯಸ್ಯ ಮಂತ್ರಸ್ಯ, ಸೂರ್ಯಮಾಮನ್ಯುಃ,ಮನ್ಯುಪತಯಃ,ಅಹರ್ದೇವತಾ, ಪ್ರಕೃತಿಪುರುಷಂ ಛಂದ: ಜಲಾಭಿಮಂತ್ರಣೇ ವಿನಿಯೋಗಃ ॥',
      );
      expect(component.blocks[5].type, 'verse_viniyoga');
      expect(
        component.blocks[5].text,
        'ಸೂರ್ಯಶ್ಚ ಮಾ ಮನ್ಯುಶ್ಚ ಮನ್ಯುಪತಯಶ್ಚ ಮನ್ಯು॑ಕೃತೇ॒ಭ್ಯಃ । ಪಾಪೇಭ್ಯೋ॑ ರಕ್ಷಂ॒ತಾಂ ।\nಯದ್ರಾತ್ರಿಯಾ ಪಾಪ॑ಮಕಾ॒ರ್ಷಮ್ । ಮನಸಾ ವಾಚಾ॑ ಹಸ್ತಾ॒ಭ್ಯಾಂ । ಪದ್ಭ್ಯಾಂ ಉದರೇ॑ಣ ಶಿ॒ಶ್ಞಾ ।\nರಾತ್ರಿ॒ಸ್ತದ॑ವಲುಂ॒ಪತು । ಯತ್ಕಿಂಚ॑ ದುರಿ॒ತಂ ಮಯಿ॑ । ಇದಮಹಂ ಮಾಮಮೃ॑ತಯೋ॒ನೌ । ಸೂರ್ಯೇ ಜ್ಯೋತಿಷಿ ಜುಹೋ॑ಮಿ ಸ್ವಾ॒ಹಾ ॥',
      );
    });
  });
}
