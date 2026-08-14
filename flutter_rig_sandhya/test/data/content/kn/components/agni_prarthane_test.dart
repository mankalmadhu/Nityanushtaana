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
      expect(component.blocks[1].text, 'ಅಗ್ನಿಗೆ ಅಭಿಮುಖವಾಗಿ ನಿ೦ತು');
      expect(component.blocks[2].type, 'verse_sankalpa');
      expect(component.blocks[2].text, 'ಓ೦ ಚಮ ಇತಿ ಸಾರಸ್ವತೋಗ್ನಿರ್ಬೃಹತಿ, ಅಗ್ನಿಃ ಪ್ರಾರ್ಥನೇ ವಿನಿಯೋಗಃ ।');
      expect(component.blocks[3].type, 'verse_viniyoga');
      expect(component.blocks[3].text, 'ಓ೦ ಚ॑ಮೇ ಸ್ವ॒ರಶ್ಚ॑ಮೇ ಯಜ್ನೋ॒ ಪಚ॑ತೇ ನ॒ಮಶ್ಚ॑ ।\nಯತ್ತೇ॒ ನ್ಯೂನ᳚೦ ತಸ್ಮೈತೇ ಉಪಯತ್ತೇ ಅತಿ॑ರಿ॒ಕ್ತ೦ ತಸ್ಮೈ॑ತೇ॒ ನಮಃ॑ ।\nಸ್ವ॒ಸ್ತಿ ಶ್ರ॒ದ್ಧಾ೦ ಮೇ॒ಧಾ೦ ಯಶಃ॑ ಪ್ರ॒ಜ್ಞಾ೦ ವಿದ್ಯಾ॒೦ ಬುದ್ಧಿ᳚೦ ಶ್ರಿಯ॒೦ ಬಲ೦ ।\nಆಯು॑ಷ್ಯ॒೦ ತೇಜ॑ ಆರೋ॒ಗ್ಯ೦ ದೇ॒ಹಿ॒ಮೇ ಹ॑ವ್ಯವಾ॒ಹನ ।');
      expect(component.blocks[4].type, 'verse_viniyoga');
      expect(component.blocks[4].text, 'ಶ್ರಿಯ೦ ದೇಹಿಮೇ ಹವ್ಯವಾಹನ ಓ೦ ನಮ ಇತಿ ।');
    });
  });
}
