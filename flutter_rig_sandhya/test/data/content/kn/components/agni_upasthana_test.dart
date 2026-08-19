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
      expect(component.blocks[1].text, '(ಅಗ್ನಿಗೆ ಅಭಿಮುಖವಾಗಿ ನಿಂತು)');
      expect(component.blocks[2].type, 'verse_sankalpa');
      expect(
        component.blocks[2].text,
        'ಮಯಿ ಮೇಧಾಮಿತಿ ಷಣ್ಣಾಂ ಮಂತ್ರಾಣಾಂ ಹಿರಣ್ಯಗರ್ಭ ಅಗ್ನಿರಿಂದ್ರಃ ಸೂರ್ಯೋ ದೇವತಾಃ ಪೂರ್ವತ್ರಯಾಣಾಂ ಸೂರ್ಯೋ ದೇವತಾ ಉತ್ತರತ್ರಯಾಣಾಂ ಅಗ್ನಿರ್ದೇವತಾ ಷಣ್ಣಾಮಾಸುರೀ ಗಾಯತ್ರೀಛಂದಃ ಅಗ್ನ್ಯುಪಸ್ಥಾನೇ ವಿನಿಯೋಗಃ ।',
      );
      expect(component.blocks[3].type, 'verse_viniyoga');
      expect(
        component.blocks[3].text,
        'ಓಂ ಮಯಿ॑ ಮೇ॒ಧಾಂ ಮಯಿ॑ ಪ್ರ॒ಜಾಂ ಮಯ್ಯಗ್ನಿ॒ಸ್ತೇಜೋ॑ ದಧಾತು ।\nಮಯಿ॑ ಮೇ॒ಧಾಂ ಮಯಿ॑ ಪ್ರ॒ಜಾಂ ಮಯೀಂದ್ರ॑ ಇಂದ್ರಿ॒ಯಂ ದ॑ಧಾತು ।\nಮಯಿ॑ ಮೇ॒ಧಾಂ ಮಯಿ॑ ಪ್ರ॒ಜಾಂ ಮಯಿ॑ ಸೂರ್ಯೋ॒ ಭ್ರಾಜೋ॑ ದಧಾತು ।',
      );
      expect(component.blocks[4].type, 'verse_viniyoga');
      expect(
        component.blocks[4].text,
        'ಯತ್ತೇ॑ ಅಗ್ನೇ॒ ತೇಜ॒ಸ್ತೇನಾ॒ಹಂ ತೇ॑ಜ॒ಸ್ವೀ ಭೂ॑ಯಾಸಂ ।\nಯತ್ತೇ॑ ಅಗ್ನೇ॒ ವರ್ಚ॒ಸ್ತೇನಾ॒ಹಂ ವ॑ರ್ಚ॒ಸ್ವೀ ಭೂ॑ಯಾಸಂ ।\nಯತ್ತೇ॑ ಅಗ್ನೇ॒ ಹರ॒ಸ್ತೇನಾ॒ಹಂ ಹ॑ರ॒ಸ್ವೀ ಭೂ॑ಯಾಸಂ ।',
      );
    });
  });
}
