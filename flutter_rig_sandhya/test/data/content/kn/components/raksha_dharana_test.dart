import 'dart:convert';
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_rig_sandhya/core/models/component.dart';

void main() {
  group('Data Layer - Kannada Content Sanitization', () {
    test('raksha_dharana content has not been accidentally modified', () {
      final file = File('assets/i18n/kn/components/raksha_dharana.json');
      final component = Component.fromJson(jsonDecode(file.readAsStringSync()));
      expect(component.blocks.length, 7);
      expect(component.blocks[0].type, 'heading');
      expect(component.blocks[0].text, 'ರಕ್ಷಾಧಾರಣ');
      expect(component.blocks[1].type, 'instruction');
      expect(component.blocks[1].text, '(ಅಗ್ನಿಗೆ ಅಭಿಮುಖವಾಗಿ ಕುಳಿತು)');
      expect(component.blocks[2].type, 'verse_sankalpa');
      expect(component.blocks[2].text, 'ಮಾನಸ್ತೋಕೇ ಇತ್ಯಸ್ಯ ಮ೦ತ್ರಸ್ಯ ಕುತ್ಸೋ ರುದ್ರೋ ಜಗತಿ ಭಸ್ಮಾಧಾರಣೇ ವಿನಿಯೋಗಃ ।');
      expect(component.blocks[3].type, 'verse_viniyoga');
      expect(component.blocks[3].text, 'ಓ೦ ಮಾ ನ॑ಸ್ತೋ॒ಕೇ ತನ॑ಯೇ॒ ಮಾ ನ॑ ಆ॒ಯೌ ಮಾ ನೋ॒ ಗೋಷು॒ ಮಾ ನೋ॒ ಅಶ್ವೇ᳚ಷು ರೀರಿಷಃ ।\nವೀ॒ರಾನ್ಮಾ ನೋ᳚ ರುದ್ರ ಭಾಮಿ॒ತೋವ॑ಧೀರ್ಹ॒ವಿಷ್ಮ᳚೦ತಃ॒ ಸದ॒ಮಿತ್ತ್ವಾ᳚ ಹವಾಮಹೇ ।');
      expect(component.blocks[4].type, 'verse_viniyoga');
      expect(component.blocks[4].text, 'ಓ೦ ತ್ರ್ಯಾಯುಷ೦ ಜಮದಗ್ನೇಃ । ಕಶ್ಯಪಸ್ಯ ತ್ರ್ಯಾಯುಷ೦ ।\nಅಗಸ್ತ್ಯಸ್ಯ ತ್ರ್ಯಾಯುಷ೦ । ಯದ್ದೇವಾನಾ೦ ತ್ರ್ಯಾಯುಷ೦ ।\nತನ್ಮೇ ಅಸ್ತು ತ್ರ್ಯಾಯುಷ೦ । ಶತಾಯುಷ೦ ।');
      expect(component.blocks[5].type, 'verse_viniyoga');
      expect(component.blocks[5].text, 'ತ್ರಿರ೦ಭಸಾ ಪರಿಷಿಚ್ಯ ।');
      expect(component.blocks[6].type, 'instruction');
      expect(component.blocks[6].text, '(ಮೂರು ಬಾರಿ)');
    });
  });
}
