import 'dart:convert';
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_rig_sandhya/core/models/component.dart';

void main() {
  group('Data Layer - Kannada Content Sanitization', () {
    test('agni_murti_dhyana content has not been accidentally modified', () {
      final file = File('assets/i18n/kn/components/agni_murti_dhyana.json');
      final component = Component.fromJson(jsonDecode(file.readAsStringSync()));
      expect(component.blocks.length, 4);
      expect(component.blocks[0].type, 'heading');
      expect(component.blocks[0].text, 'ಅಗ್ನಿಮೂರ್ತಿ ಧ್ಯಾನ');
      expect(component.blocks[1].type, 'verse_sankalpa');
      expect(
        component.blocks[1].text,
        'ಚತ್ವಾರಿಶೃಂಗೇತಿ ವಾಮದೇವೋ ಜಾತವೇದಾಗ್ನಿಃ ತ್ರಿಷ್ಟುಪ್ ಅಗ್ನಿಮೂರ್ತಿ ಧ್ಯಾನೇ ವಿನಿಯೋಗಃ ।',
      );
      expect(component.blocks[2].type, 'verse_viniyoga');
      expect(
        component.blocks[2].text,
        'ಚ॒ತ್ವಾರಿ॒ ಶೃಙ್ಗಾ॒ ತ್ರಯೋ᳚ ಅಸ್ಯ॒ ಪಾದ॒ ದ್ವೇ ಶೀ॒ರ್ಷೇ॒ ಸ॒ಪ್ತ ಹಸ್ತಾ᳚ಸೊ ಅಸ್ಯ ।\nತ್ರಿಧಾ᳚ ಬ॒ದ್ಧೋ ವೃ॑ಷ॒ಭೋ ರೋ᳚ರವೀತಿ ಮ॒ಹೋ ದೇ॒ವೋ ಮರ್ತ್ಯಾ॒ँ ಆವಿ॑ವೇಷ ।\nಅಗ್ನಿಮೂರ್ತಿಂ ಧ್ಯಾಯಾಮಿ ।',
      );
      expect(component.blocks[3].type, 'verse_viniyoga');
      expect(
        component.blocks[3].text,
        'ಓಂ ಅಗ್ನಿಂ ಪರ್ಯುಕ್ಷಣ ,ಪರಿಸಮೋಹನ , ಪರಿಷಿಚ್ಯ ।',
      );
    });
  });
}
