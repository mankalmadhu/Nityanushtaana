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
      expect(component.blocks[1].text, '(ಪೂರ್ವಾಭಿಮುಖವಾಗಿ ನಿ೦ತು)');
      expect(component.blocks[2].type, 'verse_sankalpa');
      expect(
        component.blocks[2].text,
        'ಜಾತವೇದಸಮಿತಿ ಕಶ್ಯಪೋಜಾತವೇದಾಗ್ನಿಸ್ತ್ರಿಷ್ಟುಪ್ , ಉಪಸ್ಥಾನೇ ವಿನಿಯೋಗಃ ।',
      );
      expect(component.blocks[3].type, 'verse_viniyoga');
      expect(
        component.blocks[3].text,
        'ಓ೦ ಜಾ॒ತವೇ᳚ದಸೇ ಸುನವಾಮ॒ ಸೋಮ॑ಮರಾತೀ ಯ॒ತೋ ನಿ ದ॑ಹಾತಿ॒ ವೇದಃ॑ ।\nಸ ನಃ॑ ಪರ್ಷ॒ದತಿ॑ ದು॒ರ್ಗಾಣಿ॒ ವಿಶ್ವಾ᳚ ನಾ॒ವೇವ॒ ಸಿ೦ಧು᳚೦ ದುರಿ॒ತಾತ್ಯ॒ಗ್ನಿಃ ॥ಓ೦ ಶಾ೦ತಿ॒ಶ್ಯಾ೦ತಿ॒ಶ್ಯಾ೦ತಿಃ॑ ।',
      );
      expect(component.blocks[4].type, 'verse_sankalpa');
      expect(
        component.blocks[4].text,
        'ತಚ್ಛ೦ಯೋರಿತಿ ಸಾರಸ್ವತೋಗ್ನಿಸ್ತ್ರಿಷ್ಟುಪ್ ಉಪಸ್ಥಾನೇ ವಿನಿಯೋಗಃ।',
      );
      expect(component.blocks[5].type, 'verse_viniyoga');
      expect(
        component.blocks[5].text,
        'ಓ೦ ತಚ್ಛ॒೦ ಯೋರಾವೃ॑ಣೀಮಹೇ । ಗಾ॒ತು೦ ಯ॒ಜ್ಞಾಯ॑ ಗಾ॒ತು೦ ಯ॒ಜ್ಞ್ನಪ॑ತಯೇ ।\nದೈವೀಃ᳚ ಸ್ವ॒ಸ್ತಿರ॑ಸ್ತು ನಃ। ಸ್ವ॒ಸ್ತಿರ್ಮಾನು॑ಷೇಭ್ಯಃ । ಊ॒ರ್ಧ್ವ೦ ಜಿ॑ಗಾತು ಭೇಷ॒ಜ೦ ।\nಶ೦ ನೋ॑ ಅಸ್ತು ದ್ವಿ॒ಪದೇ᳚ ಶ೦ ಚತು॑ಷ್ಪದೇ ॥ಓ೦ ಶಾ೦ತಿ॒ಶ್ಯಾ೦ತಿ॒ಶ್ಯಾ೦ತಿಃ॑ ।',
      );
      expect(component.blocks[6].type, 'verse_sankalpa');
      expect(
        component.blocks[6].text,
        'ನಮೋ ಬ್ರಹ್ಮಣೇ ಪ್ರಜಾಪತಿರ್ವಿಶ್ವೇದೇವಾ ಜಗತಿ ಉಪಸ್ಥಾನೇ ವಿನಿಯೋಗಃ ।',
      );
      expect(component.blocks[7].type, 'verse_viniyoga');
      expect(
        component.blocks[7].text,
        'ಓ೦ ನಮೋ॒ ಬ್ರ॒ಹ್ಮಣೇ॒ ನಮೋ᳚ ಅಸ್ತ್ವ॒ಗ್ನಯೇ॒ ನಮಃ॑ ಪೃಥಿ॒ವ್ಯೈ ನಮ॒ ಓಷ॑ಧೀಭ್ಯಃ । ನಮೋ᳚ ವಾ॒ಚೇ ನಮೋ᳚ ವಾ॒ಚಸ್ಪ॑ತಯೇ॒ ನಮೋ॒ ವಿಷ್ಣ॑ವೇ ಮಹ॒ತೇ ಕ॑ರೋಮೀ ॥',
      );
      expect(component.blocks[8].type, 'instruction');
      expect(component.blocks[8].text, '(ಮೂರು ಬಾರಿ)');
      expect(component.blocks[9].type, 'verse_viniyoga');
      expect(
        component.blocks[9].text,
        'ಓ೦ ನಮಃ ಪ್ರಾಚ್ಯೇ ದಿಶೇ ಇ೦ದ್ರಾಯ ನಮಃ ಅಗ್ನಯೇ ನಮಃ ।\nಓ೦ ನಮಃ ದಕ್ಷಿಣಾಯೈ ದಿಶೇ ಯಮಾಯ ನಮಃ ನಿರ್ಋತಯೇ ನಮಃ ।\nಓ೦ ನಮಃ ಪ್ರತೀಚ್ಯೇ ದಿಶೇ ವರುಣಾಯ ನಮಃ ವಾಯವೇ ನಮಃ ।\nಓ೦ ನಮಃ ಉದೀಚ್ಯೇ ದಿಶೇ ಸೋಮಾಯ ನಮಃ ಈಶಾನಾಯ ನಮಃ ।\nಓ೦ ಊರ್ಧ್ವಾಯೈ ದಿಶೇ ಬ್ರಹ್ಮಣೇ ನಮಃ ।\nಓ೦ ಅಧರಾಯೈ ದಿಶೇ ಪೃಥಿವ್ಯೈ ನಮಃ ।\nಓ೦ ಅವಾ೦ತರಾಯೈ ದಿಶೇ ವಾಯವೇ ನಮಃ ।',
      );
      expect(component.blocks[10].type, 'verse_viniyoga');
      expect(
        component.blocks[10].text,
        'ಓ೦ ಸ೦ಧ್ಯಾಯೈ ನಮಃ ।ಓ೦ ಗಾಯತ್ರ್ಯೈ ನಮಃ ।\nಓ೦ ಸಾವಿತ್ರ್ಯೈ ನಮಃ ।ಓ೦ ಸರಸ್ವತ್ಯೈ ನಮಃ ।\nಓ೦ ಸರ್ವಾಭ್ಯೋ ದೇವತಾಭ್ಯೋ ನಮಃ ।ಓ೦ ಸರ್ವೇಭ್ಯೋ ದೇವೇಭ್ಯೋ ನಮಃ ।\nಓ೦ ಋಷಿಭ್ಯೋ ನಮಃ।ಓ೦ ಮುನಿಭ್ಯೋ ನಮಃ। ಓ೦ ಮಾತೃಭ್ಯೋ ನಮಃ ।\nಓ೦ ಪಿತೃಭ್ಯೋ ನಮಃ । ಓ೦ ಗುರುಭ್ಯೋ ನಮಃ । ಓ೦ ಆಚಾರ್ಯೇಭ್ಯೋ ನಮಃ ।\nಓ೦ ಕಾಮೋಕಾರ್ಷೀನ್ ಮನ್ಯುರಕಾರ್ಷೀನ್ ನಮೋ ನಮಃ ।\nಓ೦ ಶಾ೦ತಿ॒ಶ್ಯಾ೦ತಿ॒ಶ್ಯಾ೦ತಿಃ॑ ।ಸರ್ವಶಾ೦ತಿರಸ್ತು ॥',
      );
      expect(component.blocks[11].type, 'verse_viniyoga');
      expect(
        component.blocks[11].text,
        'ಉ॒ತ್ತಮೇ॑ ಶಿಖ॑ರೇ ದೇ॒ವೀ॒ ಭೂ॒ಮ್ಯಾ೦ ಪ॑ರ್ವತ॒ಮೂರ್ಧ॑ನೀ ।\nಬ್ರಾಹ್ಮಣೇ᳚ಭ್ಯೋಭ್ಯ॑ನುಜ್ಞಾ॒ತಾ॒ ಗ॒ಚ್ಛ ದೇ॑ವೀ ಯ॒ಥಾಸು॑ಖಮ್ ।\nಭ॒ದ್ರನ್ನೋ॒ ಅಪಿ॑ವಾತಯ ಮನಃ॑ ।ಓ೦ ಶಾ೦ತಿ॒ಶ್ಯಾ೦ತಿ॒ಶ್ಯಾ೦ತಿಃ॑ ।',
      );
      expect(component.blocks[12].type, 'verse_sankalpa');
      expect(
        component.blocks[12].text,
        'ನಮೋ ಬ್ರಹ್ಮಣೇ ಪ್ರಜಾಪತಿರ್ವಿಶ್ವೇದೇವಾ ಜಗತಿ ಉಪಸ್ಥಾನೇ ವಿನಿಯೋಗಃ ।',
      );
      expect(component.blocks[13].type, 'verse_viniyoga');
      expect(
        component.blocks[13].text,
        'ಓ೦ ನಮೋ॒ ಬ್ರ॒ಹ್ಮಣೇ॒ ನಮೋ᳚ ಅಸ್ತ್ವ॒ಗ್ನಯೇ॒ ನಮಃ॑ ಪೃಥಿ॒ವ್ಯೈ ನಮ॒ ಓಷ॑ಧೀಭ್ಯಃ । ನಮೋ᳚ ವಾ॒ಚೇ ನಮೋ᳚ ವಾ॒ಚಸ್ಪ॑ತಯೇ॒ ನಮೋ॒ ವಿಷ್ಣ॑ವೇ ಮಹ॒ತೇ ಕ॑ರೋಮೀ ॥',
      );
      expect(component.blocks[14].type, 'verse_viniyoga');
      expect(
        component.blocks[14].text,
        'ಚತುಸ್ಸಾಗರ ಪರ್ಯ೦ತ೦ ಗೋ ಬ್ರಾಹ್ಮಣೇಭ್ಯಃ ಶುಭ೦ ಭವತು ವೈಶ್ವಾಮಿತ್ರ ಅಘಮರ್ಷಣ ಕೌಶಿಕ ತ್ರಯಾರ್ಷೇಯ\nಪ್ರವರಾನ್ವಿತ ಕೌಶಿಕ ಸಗೋತ್ರಃ ಆಶ್ವಲಾಯನ ಸೂತ್ರಃ\nಋಕ್ ಶಾಖಾ ಅಧ್ಯಾಯಿ ಶ್ರೀ ತೇಜೋ __ ಶರ್ಮ ಅಹ೦ಭೋ ಅಭಿವಾದಯೇ ॥',
      );
      expect(component.blocks[15].type, 'verse_viniyoga');
      expect(
        component.blocks[15].text,
        'ಆಸತ್ಯಲೋಕಾದಾಶೇಷಾತ್ ಆಲೋಕಾಲ್ಲೋಕಪರ್ವತಾತ್ । ಯೇ ಸ೦ತಿ ಬ್ರಾಹ್ಮಣಾದೇವಾಃ ತೇಭ್ಯೋನಿತ್ಯ೦ ನಮೋನಮಃ ॥',
      );
    });
  });
}
