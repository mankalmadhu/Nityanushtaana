import 'dart:convert';
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_rig_sandhya/core/models/component.dart';

void main() {
  group('Data Layer - Kannada Content Sanitization', () {
    test('agni_upasthana content has not been accidentally modified', () {
      final file = File('assets/i18n/kn/components/agni_upasthana.json');
      final component = Component.fromJson(jsonDecode(file.readAsStringSync()));
      expect(component.blocks.length, 5);
      expect(component.blocks[0].type, 'heading');
      expect(component.blocks[0].text, 'ಅಗ್ನ್ಯುಪಸ್ಥಾನ');
      expect(component.blocks[1].type, 'instruction');
      expect(component.blocks[1].text, '(ಅಗ್ನಿಗೆ ಅಭಿಮುಖವಾಗಿ ನಿ೦ತು)');
      expect(component.blocks[2].type, 'verse_sankalpa');
      expect(component.blocks[2].text, 'ಮಯಿ ಮೇಧಾಮಿತಿ ಷಣ್ಣಾ೦ ಮ೦ತ್ರಾಣಾ೦ ಹಿರಣ್ಯಗರ್ಭ ಅಗ್ನಿರಿ೦ದ್ರಃ ಸೂರ್ಯೋ ದೇವತಾಃ ಪೂರ್ವತ್ರಯಾಣಾ೦ ಸೂರ್ಯೋ ದೇವತಾ ಉತ್ತರತ್ರಯಾಣಾ೦ ಅಗ್ನಿರ್ದೇವತಾ ಷಣ್ಣಾಮಾಸುರೀ ಗಾಯತ್ರೀಛ೦ದಃ ಅಗ್ನ್ಯುಪಸ್ಥಾನೇ ವಿನಿಯೋಗಃ ।');
      expect(component.blocks[3].type, 'verse_viniyoga');
      expect(component.blocks[3].text, 'ಓ೦ ಮಯಿ॑ ಮೇ॒ಧಾ೦ ಮಯಿ॑ ಪ್ರ॒ಜಾ೦ ಮಯ್ಯಗ್ನಿ॒ಸ್ತೇಜೋ॑ ದಧಾತು ।\nಮಯಿ॑ ಮೇ॒ಧಾ೦ ಮಯಿ॑ ಪ್ರ॒ಜಾ೦ ಮಯೀ೦ದ್ರ॑ ಇ೦ದ್ರಿ॒ಯ೦ ದ॑ಧಾತು ।\nಮಯಿ॑ ಮೇ॒ಧಾ೦ ಮಯಿ॑ ಪ್ರ॒ಜಾ೦ ಮಯಿ॑ ಸೂರ್ಯೋ॒ ಭ್ರಾಜೋ॑ ದಧಾತು ।');
      expect(component.blocks[4].type, 'verse_viniyoga');
      expect(component.blocks[4].text, 'ಯತ್ತೇ॑ ಅಗ್ನೇ॒ ತೇಜ॒ಸ್ತೇನಾ॒ಹ೦ ತೇ॑ಜ॒ಸ್ವೀ ಭೂ॑ಯಾಸ೦ ।\nಯತ್ತೇ॑ ಅಗ್ನೇ॒ ವರ್ಚ॒ಸ್ತೇನಾ॒ಹ೦ ವ॑ರ್ಚ॒ಸ್ವೀ ಭೂ॑ಯಾಸ೦ ।\nಯತ್ತೇ॑ ಅಗ್ನೇ॒ ಹರ॒ಸ್ತೇನಾ॒ಹ೦ ಹ॑ರ॒ಸ್ವೀ ಭೂ॑ಯಾಸ೦ ।');
    });
  });
}
