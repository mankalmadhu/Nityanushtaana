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
      expect(component.blocks[1].text, 'ಆಪೋಹಿಷ್ಠೇತಿ ತ್ರಿಚರ್ಚಸ್ಯ ಸೂಕ್ತಸ್ಯ, ಅ೦ಬರೀಶಃ ಸಿ೦ಧು ದ್ವೀಪ ಋಷಿಃ,\nಆಪೋ ದೇವತಾ, ಗಾಯತ್ರೀ ಛ೦ದಃ ಮಾರ್ಜನೇ ವಿನಿಯೋಗಃ ॥');
      expect(component.blocks[2].type, 'verse_viniyoga');
      expect(component.blocks[2].text, 'ಓ೦ ಆಪೋ॒ಹಿಷ್ಠಾ ಮ॑ಯೋ॒ಭುವ॒ಸ್ತಾನ॑ ಊ॒ರ್ಜೇ ದ॑ಧಾತನ । ಮ॒ಹೇರಣಾ᳚ಯ॒ ಚಕ್ಷ॑ಸೇ ॥\nಯೋವಃ॑ ಶಿ॒ವತ॑ಮೋ॒ರಸ॒ಸ್ತಸ್ಯ॑ ಭಾಜಯತೇ॒ಹನಃ॑ । ಉ॒ಶ॒ತೀರಿ॑ವ ಮಾ॒ತರಃ॑ ।\nತಸ್ಮಾ॒ ಅರ᳚೦ಗ ಮಾ॒ಮವೋ॒ಯಸ್ಯ॒ಕ್ಷಯಾ᳚ಯ॒ ಜಿನ್ವ॑ಥ । ಆಪೋ᳚ ಜ॒ನಯ॑ಥಾಚನಃ ॥');
      expect(component.blocks[3].type, 'heading');
      expect(component.blocks[3].text, 'ಅಭಿಮ೦ತ್ರಣೆ');
      expect(component.blocks[4].type, 'verse_sankalpa');
      expect(component.blocks[4].text, 'ಆಪಃ ಪುನ೦ತು ಇತ್ಯಸ್ಯ ವಿಷ್ಣು ಋಷಿಃ ಆಪೋ ದೇವತಾ ಅಷ್ಟಿಃ ಛ೦ದಃ ಅಪಾ೦ಪ್ರಾಶನೇ ವಿನಿಯೋಗಃ ।');
      expect(component.blocks[5].type, 'verse_viniyoga');
      expect(component.blocks[5].text, 'ಆಪಃ॑ ಪುನ೦ತು ಪೃಥಿ॒ವೀ೦  ಪೃ॑ಥಿ॒ವೀ ಪೂ॒ತಾ ಪು॑ನಾತು॒ ಮಾಮ್ ।\nಪು॒ನ೦ತು॒ ಬ್ರಹ್ಮ॑ಣ॒ಸ್ಪತಿ॒-ರ್ಬ್ರಹ್ಮ॑ಪೂ॒ತಾ ಪು॑ನಾತು॒ ಮಾಮ್ ।\nಯದುಚ್ಛಿ॑ಷ್ಟ॒ಮಭೋ᳚ಜ್ಯ॒೦  ಯದ್ವಾ॑  ದು॒ಶ್ಚರಿ॑ತ॒೦ ಮಮ॑।\nಸರ್ವ॑೦ ಪುನ೦ತು॒ ಮಾಮಾಪೋ॑ಽಸ॒ತಾ೦ ಚ॑ ಪ್ರತಿ॒ಗ್ರಹ॒೦ ಸ್ವಾಹಾ᳚॥');
    });
  });
}
