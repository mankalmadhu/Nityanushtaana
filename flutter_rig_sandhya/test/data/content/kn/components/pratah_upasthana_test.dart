import 'dart:convert';
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_rig_sandhya/core/models/component.dart';

void main() {
  group('Data Layer - Kannada Content Sanitization', () {
    test('pratah_upasthana content has not been accidentally modified', () {
      final file = File('assets/i18n/kn/components/pratah_upasthana.json');
      final component = Component.fromJson(jsonDecode(file.readAsStringSync()));
      expect(component.blocks.length, 16);
      expect(component.blocks[0].type, 'heading');
      expect(component.blocks[0].text, 'ಉಪಸ್ಥಾನ');
      expect(component.blocks[1].type, 'instruction');
      expect(component.blocks[1].text, '(ಪೂರ್ವಾಭಿಮುಖವಾಗಿ ನಿಂತು)');
      expect(component.blocks[2].type, 'verse_sankalpa');
      expect(
        component.blocks[2].text,
        'ಜಾತವೇದಸಮಿತಿ ಕಶ್ಯಪೋಜಾತವೇದಾಗ್ನಿಸ್ತ್ರಿಷ್ಟುಪ್ , ಉಪಸ್ಥಾನೇ ವಿನಿಯೋಗಃ ।',
      );
      expect(component.blocks[3].type, 'verse_viniyoga');
      expect(
        component.blocks[3].text,
        'ಓಂ ಜಾ॒ತವೇ᳚ದಸೇ ಸುನವಾಮ॒ ಸೋಮ॑ಮರಾತೀ ಯ॒ತೋ ನಿ ದ॑ಹಾತಿ॒ ವೇದಃ॑ ।\nಸ ನಃ॑ ಪರ್ಷ॒ದತಿ॑ ದು॒ರ್ಗಾಣಿ॒ ವಿಶ್ವಾ᳚ ನಾ॒ವೇವ॒ ಸಿಂಧುಂ᳚ ದುರಿ॒ತಾತ್ಯ॒ಗ್ನಿಃ ॥ಓಂ ಶಾಂತಿ॒ಶ್ಯಾಂತಿ॒ಶ್ಯಾಂತಿಃ॑ ।',
      );
      expect(component.blocks[4].type, 'verse_sankalpa');
      expect(
        component.blocks[4].text,
        'ತಚ್ಛಂಯೋರಿತಿ ಸಾರಸ್ವತೋಗ್ನಿಸ್ತ್ರಿಷ್ಟುಪ್ ಉಪಸ್ಥಾನೇ ವಿನಿಯೋಗಃ।',
      );
      expect(component.blocks[5].type, 'verse_viniyoga');
      expect(
        component.blocks[5].text,
        'ಓಂ ತಚ್ಛಂ॒ ಯೋರಾವೃ॑ಣೀಮಹೇ । ಗಾ॒ತುಂ ಯ॒ಜ್ಞಾಯ॑ ಗಾ॒ತುಂ ಯ॒ಜ್ಞ್ನಪ॑ತಯೇ ।\nದೈವೀಃ᳚ ಸ್ವ॒ಸ್ತಿರ॑ಸ್ತು ನಃ। ಸ್ವ॒ಸ್ತಿರ್ಮಾನು॑ಷೇಭ್ಯಃ । ಊ॒ರ್ಧ್ವಂ ಜಿ॑ಗಾತು ಭೇಷ॒ಜಂ ।\nಶಂ ನೋ॑ ಅಸ್ತು ದ್ವಿ॒ಪದೇ᳚ ಶಂ ಚತು॑ಷ್ಪದೇ ॥ಓಂ ಶಾಂತಿ॒ಶ್ಯಾಂತಿ॒ಶ್ಯಾಂತಿಃ॑ ।',
      );
      expect(component.blocks[6].type, 'verse_sankalpa');
      expect(
        component.blocks[6].text,
        'ನಮೋ ಬ್ರಹ್ಮಣೇ ಪ್ರಜಾಪತಿರ್ವಿಶ್ವೇದೇವಾ ಜಗತಿ ಉಪಸ್ಥಾನೇ ವಿನಿಯೋಗಃ ।',
      );
      expect(component.blocks[7].type, 'verse_viniyoga');
      expect(
        component.blocks[7].text,
        'ಓಂ ನಮೋ॒ ಬ್ರ॒ಹ್ಮಣೇ॒ ನಮೋ᳚ ಅಸ್ತ್ವ॒ಗ್ನಯೇ॒ ನಮಃ॑ ಪೃಥಿ॒ವ್ಯೈ ನಮ॒ ಓಷ॑ಧೀಭ್ಯಃ । ನಮೋ᳚ ವಾ॒ಚೇ ನಮೋ᳚ ವಾ॒ಚಸ್ಪ॑ತಯೇ॒ ನಮೋ॒ ವಿಷ್ಣ॑ವೇ ಮಹ॒ತೇ ಕ॑ರೋಮೀ ॥',
      );
      expect(component.blocks[8].type, 'instruction');
      expect(component.blocks[8].text, '(ಮೂರು ಬಾರಿ)');
      expect(component.blocks[9].type, 'verse_viniyoga');
      expect(
        component.blocks[9].text,
        'ಓಂ ನಮಃ ಪ್ರಾಚ್ಯೇ ದಿಶೇ ಇಂದ್ರಾಯ ನಮಃ ಅಗ್ನಯೇ ನಮಃ ।\nಓಂ ನಮಃ ದಕ್ಷಿಣಾಯೈ ದಿಶೇ ಯಮಾಯ ನಮಃ ನಿರ್ಋತಯೇ ನಮಃ ।\nಓಂ ನಮಃ ಪ್ರತೀಚ್ಯೇ ದಿಶೇ ವರುಣಾಯ ನಮಃ ವಾಯವೇ ನಮಃ ।\nಓಂ ನಮಃ ಉದೀಚ್ಯೇ ದಿಶೇ ಸೋಮಾಯ ನಮಃ ಈಶಾನಾಯ ನಮಃ ।\nಓಂ ಊರ್ಧ್ವಾಯೈ ದಿಶೇ ಬ್ರಹ್ಮಣೇ ನಮಃ ।\nಓಂ ಅಧರಾಯೈ ದಿಶೇ ಪೃಥಿವ್ಯೈ ನಮಃ ।\nಓಂ ಅವಾಂತರಾಯೈ ದಿಶೇ ವಾಯವೇ ನಮಃ ।',
      );
      expect(component.blocks[10].type, 'verse_viniyoga');
      expect(
        component.blocks[10].text,
        'ಓಂ ಸಂಧ್ಯಾಯೈ ನಮಃ ।ಓಂ ಗಾಯತ್ರ್ಯೈ ನಮಃ ।\nಓಂ ಸಾವಿತ್ರ್ಯೈ ನಮಃ ।ಓಂ ಸರಸ್ವತ್ಯೈ ನಮಃ ।\nಓಂ ಸರ್ವಾಭ್ಯೋ ದೇವತಾಭ್ಯೋ ನಮಃ ।ಓಂ ಸರ್ವೇಭ್ಯೋ ದೇವೇಭ್ಯೋ ನಮಃ ।\nಓಂ ಋಷಿಭ್ಯೋ ನಮಃ।ಓಂ ಮುನಿಭ್ಯೋ ನಮಃ। ಓಂ ಮಾತೃಭ್ಯೋ ನಮಃ ।\nಓಂ ಪಿತೃಭ್ಯೋ ನಮಃ । ಓಂ ಗುರುಭ್ಯೋ ನಮಃ । ಓಂ ಆಚಾರ್ಯೇಭ್ಯೋ ನಮಃ ।\nಓಂ ಕಾಮೋಕಾರ್ಷೀನ್ ಮನ್ಯುರಕಾರ್ಷೀನ್ ನಮೋ ನಮಃ ।\nಓಂ ಶಾಂತಿ॒ಶ್ಯಾಂತಿ॒ಶ್ಯಾಂತಿಃ॑ ।ಸರ್ವಶಾಂತಿರಸ್ತು ॥',
      );
      expect(component.blocks[11].type, 'verse_viniyoga');
      expect(
        component.blocks[11].text,
        'ಉ॒ತ್ತಮೇ॑ ಶಿಖ॑ರೇ ದೇ॒ವೀ॒ ಭೂ॒ಮ್ಯಾಂ ಪ॑ರ್ವತ॒ಮೂರ್ಧ॑ನೀ ।\nಬ್ರಾಹ್ಮಣೇ᳚ಭ್ಯೋಭ್ಯ॑ನುಜ್ಞಾ॒ತಾ॒ ಗ॒ಚ್ಛ ದೇ॑ವೀ ಯ॒ಥಾಸು॑ಖಮ್ ।\nಭ॒ದ್ರನ್ನೋ॒ ಅಪಿ॑ವಾತಯ ಮನಃ॑ ।ಓಂ ಶಾಂತಿ॒ಶ್ಯಾಂತಿ॒ಶ್ಯಾಂತಿಃ॑ ।',
      );
      expect(component.blocks[12].type, 'verse_sankalpa');
      expect(
        component.blocks[12].text,
        'ನಮೋ ಬ್ರಹ್ಮಣೇ ಪ್ರಜಾಪತಿರ್ವಿಶ್ವೇದೇವಾ ಜಗತಿ ಉಪಸ್ಥಾನೇ ವಿನಿಯೋಗಃ ।',
      );
      expect(component.blocks[13].type, 'verse_viniyoga');
      expect(
        component.blocks[13].text,
        'ಓಂ ನಮೋ॒ ಬ್ರ॒ಹ್ಮಣೇ॒ ನಮೋ᳚ ಅಸ್ತ್ವ॒ಗ್ನಯೇ॒ ನಮಃ॑ ಪೃಥಿ॒ವ್ಯೈ ನಮ॒ ಓಷ॑ಧೀಭ್ಯಃ । ನಮೋ᳚ ವಾ॒ಚೇ ನಮೋ᳚ ವಾ॒ಚಸ್ಪ॑ತಯೇ॒ ನಮೋ॒ ವಿಷ್ಣ॑ವೇ ಮಹ॒ತೇ ಕ॑ರೋಮೀ ॥',
      );
      expect(component.blocks[14].type, 'verse_viniyoga');
      expect(
        component.blocks[14].text,
        'ಚತುಸ್ಸಾಗರ ಪರ್ಯಂತಂ ಗೋ ಬ್ರಾಹ್ಮಣೇಭ್ಯಃ ಶುಭಂ ಭವತು ವೈಶ್ವಾಮಿತ್ರ ಅಘಮರ್ಷಣ ಕೌಶಿಕ ತ್ರಯಾರ್ಷೇಯ\nಪ್ರವರಾನ್ವಿತ ಕೌಶಿಕ ಸಗೋತ್ರಃ ಆಶ್ವಲಾಯನ ಸೂತ್ರಃ\nಋಕ್ ಶಾಖಾ ಅಧ್ಯಾಯಿ ಶ್ರೀ ತೇಜೋ __ ಶರ್ಮ ಅಹಂಭೋ ಅಭಿವಾದಯೇ ॥',
      );
      expect(component.blocks[15].type, 'verse_viniyoga');
      expect(
        component.blocks[15].text,
        'ಆಸತ್ಯಲೋಕಾದಾಶೇಷಾತ್ ಆಲೋಕಾಲ್ಲೋಕಪರ್ವತಾತ್ । ಯೇ ಸಂತಿ ಬ್ರಾಹ್ಮಣಾದೇವಾಃ ತೇಭ್ಯೋನಿತ್ಯಂ ನಮೋನಮಃ ॥',
      );
    });
  });
}
