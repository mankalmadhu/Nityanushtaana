import 'dart:convert';
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_rig_sandhya/core/models/component.dart';

void main() {
  group('Data Layer - Kannada Content Sanitization', () {
    test('agni_prarthane content has not been accidentally modified', () {
      final file = File('assets/i18n/kn/components/agni_prarthane.json');
      final component = Component.fromJson(jsonDecode(file.readAsStringSync()));
      expect(component.blocks.length, 5);
      expect(component.blocks[0].type, 'heading');
      expect(component.blocks[0].text, 'ಅಗ್ನಿಃಪ್ರಾರ್ಥನೆ');
      expect(component.blocks[1].type, 'instruction');
      expect(component.blocks[1].text, 'ಅಗ್ನಿಗೆ ಅಭಿಮುಖವಾಗಿ ನಿಂತು');
      expect(component.blocks[2].type, 'verse_sankalpa');
      expect(
        component.blocks[2].text,
        'ಓಂ ಚಮ ಇತಿ ಸಾರಸ್ವತೋಗ್ನಿರ್ಬೃಹತಿ, ಅಗ್ನಿಃ ಪ್ರಾರ್ಥನೇ ವಿನಿಯೋಗಃ ।',
      );
      expect(component.blocks[3].type, 'verse_viniyoga');
      expect(
        component.blocks[3].text,
        'ಓಂ ಚ॑ಮೇ ಸ್ವ॒ರಶ್ಚ॑ಮೇ ಯಜ್ನೋ॒ ಪಚ॑ತೇ ನ॒ಮಶ್ಚ॑ ।\nಯತ್ತೇ॒ ನ್ಯೂನಂ᳚ ತಸ್ಮೈತೇ ಉಪಯತ್ತೇ ಅತಿ॑ರಿ॒ಕ್ತಂ ತಸ್ಮೈ॑ತೇ॒ ನಮಃ॑ ।\nಸ್ವ॒ಸ್ತಿ ಶ್ರ॒ದ್ಧಾಂ ಮೇ॒ಧಾಂ ಯಶಃ॑ ಪ್ರ॒ಜ್ಞಾಂ ವಿದ್ಯಾಂ॒ ಬುದ್ಧಿಂ᳚ ಶ್ರಿಯಂ॒ ಬಲಂ ।\nಆಯು॑ಷ್ಯಂ॒ ತೇಜ॑ ಆರೋ॒ಗ್ಯಂ ದೇ॒ಹಿ॒ಮೇ ಹ॑ವ್ಯವಾ॒ಹನ ।',
      );
      expect(component.blocks[4].type, 'verse_viniyoga');
      expect(component.blocks[4].text, 'ಶ್ರಿಯಂ ದೇಹಿಮೇ ಹವ್ಯವಾಹನ ಓಂ ನಮ ಇತಿ ।');
    });
  });
}
