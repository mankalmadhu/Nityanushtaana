import 'dart:convert';
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_rig_sandhya/core/models/component.dart';

void main() {
  group('Data Layer - Kannada Content Sanitization', () {
    test('madhyahnika_marjane content has not been accidentally modified', () {
      final file = File('assets/i18n/kn/components/madhyahnika_marjane.json');
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
        'ಆಪಃ ಪುನಂತು ಇತ್ಯಸ್ಯ ವಿಷ್ಣು ಋಷಿಃ ಆಪೋ ದೇವತಾ ಅಷ್ಟಿಃ ಛಂದಃ ಅಪಾಂಪ್ರಾಶನೇ ವಿನಿಯೋಗಃ ।',
      );
      expect(component.blocks[5].type, 'verse_viniyoga');
      expect(
        component.blocks[5].text,
        'ಆಪಃ॑ ಪುನಂತು ಪೃಥಿ॒ವೀಂ  ಪೃ॑ಥಿ॒ವೀ ಪೂ॒ತಾ ಪು॑ನಾತು॒ ಮಾಮ್ ।\nಪು॒ನಂತು॒ ಬ್ರಹ್ಮ॑ಣ॒ಸ್ಪತಿ॒-ರ್ಬ್ರಹ್ಮ॑ಪೂ॒ತಾ ಪು॑ನಾತು॒ ಮಾಮ್ ।\nಯದುಚ್ಛಿ॑ಷ್ಟ॒ಮಭೋ᳚ಜ್ಯಂ॒  ಯದ್ವಾ॑  ದು॒ಶ್ಚರಿ॑ತಂ॒ ಮಮ॑।\nಸರ್ವಂ॑ ಪುನಂತು॒ ಮಾಮಾಪೋ॑ಽಸ॒ತಾಂ ಚ॑ ಪ್ರತಿ॒ಗ್ರಹಂ॒ ಸ್ವಾಹಾ᳚॥',
      );
    });
  });
}
