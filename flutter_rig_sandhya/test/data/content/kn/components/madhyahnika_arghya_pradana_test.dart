import 'dart:convert';
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_rig_sandhya/core/models/component.dart';

void main() {
  group('Data Layer - Kannada Content Sanitization', () {
    test('madhyahnika_arghya_pradana content has not been accidentally modified', () {
      final file = File(
        'assets/i18n/kn/components/madhyahnika_arghya_pradana.json',
      );
      final component = Component.fromJson(jsonDecode(file.readAsStringSync()));
      expect(component.blocks.length, 11);
      expect(component.blocks[0].type, 'heading');
      expect(component.blocks[0].text, 'ಅರ್ಘ್ಯ ಪ್ರದಾನ');
      expect(component.blocks[1].type, 'instruction');
      expect(component.blocks[1].text, 'ಪೂರ್ವಾಭಿಮುಖವಾಗಿ ನಿ೦ತು');
      expect(component.blocks[2].type, 'verse_sankalpa');
      expect(
        component.blocks[2].text,
        'ಹ೦ಸಃ ಶುಚಿಷತ್ ಇತಿ, ಏಕಸ್ಯ ಋಚೋ, ಗೌತಮ ಪುತ್ರೋ ವಾಮದೇವ ಋಷಿಃ, ಸೂರ್ಯೋ ದೇವತಾ ಜಗತೀಛ೦ದಃ ಅರ್ಘ್ಯ ಪ್ರದಾನೇ ವಿನಿಯೋಗಃ ।',
      );
      expect(component.blocks[3].type, 'verse_viniyoga');
      expect(
        component.blocks[3].text,
        'ಓ೦ ಹ॒೦ಸಃ ಶು॑ಚಿ॒ಷದ್ವಸು॑ರ೦ತರಿಕ್ಷ॒ ಸದ್ಧೋತಾ᳚ವೇದಿ॒ಷದತಿ॑ಥಿರ್ದುರೋಣ॒ಸತ್ । ನೃ॒ಷದ್ವ॑ರ॒ಸದೃ॑ತ॒ಸದ್ವ್ಯೋ᳚ಮ॒ಸದ॒ಬ್ಜಾ ಗೋ॒ಜಾ ಋ॑ತ॒ಜಾ ಅ॑ದ್ರಿ॒ಜಾ ಋ॒ತಮ್ ।',
      );
      expect(component.blocks[4].type, 'verse_viniyoga');
      expect(
        component.blocks[4].text,
        'ಓ॒ಮಾಪೋ॒ ಜ್ಯೋತೀ॒ರಸೋ॒ಽಮೃತ॒೦ ಬ್ರಹ್ಮ॒ ಭೂರ್ಭುವ॒ಸ್ಸ್ವರೋ೦॥',
      );
      expect(component.blocks[5].type, 'verse_sankalpa');
      expect(
        component.blocks[5].text,
        'ಆಕೃಷ್ಣೇನ ರಜಸಾ ಹಿರಣ್ಯಸ್ತೂಪಃ ಸವಿತಾ ತ್ರಿಷ್ಟುಪ್ ಅರ್ಘ್ಯ ಪ್ರದಾನೇ ವಿನಿಯೋಗಃ ।',
      );
      expect(component.blocks[6].type, 'verse_viniyoga');
      expect(
        component.blocks[6].text,
        'ಆಕೃ॒ಷ್ಣೇನ॒ ರಜ॑ಸಾ॒ ವರ್ತ॑ಮಾನೋ ನಿವೇ॒ಶಯ॑ನ್ನ॒ಮೃತ॒೦ ಮರ್ತ್ಯ᳚೦ ಚ । ಹಿ॒ರ॒ಣ್ಯಯೇ᳚ನ ಸವಿ॒ತಾ ರಥೇ॒ನಾಽಽದೇ॒ವೋ ಯಾ᳚ತಿ॒ ಭುವ॑ನಾನಿ॒ಪಶ್ಯನ್॑ ।',
      );
      expect(component.blocks[7].type, 'verse_viniyoga');
      expect(
        component.blocks[7].text,
        'ಓ॒ಮಾಪೋ॒ ಜ್ಯೋತೀ॒ರಸೋ॒ಽಮೃತ॒೦ ಬ್ರಹ್ಮ॒ ಭೂರ್ಭುವ॒ಸ್ಸ್ವರೋ೦॥',
      );
      expect(component.blocks[8].type, 'verse_sankalpa');
      expect(
        component.blocks[8].text,
        'ಕಾಲಾತೀತ ದೋಷ ಪ್ರಾಯಶ್ಚಿತ್ತಾರ್ಥ೦ ಅರ್ಘ್ಯ ಪ್ರದಾನ೦ ಕರಿಷ್ಯೇ ।',
      );
      expect(component.blocks[9].type, 'verse_viniyoga');
      expect(
        component.blocks[9].text,
        'ಓ೦ ಭೂರ್ಭುವ॒ಸ್ಸ್ವಃ । ಓ೦ ತತ್ಸ॑ವಿ॒ತುರ್ವರೇ᳚ಣ್ಯ॒೦ ಭರ್ಗೋ᳚ ದೇ॒ವಸ್ಯ॑ ಧೀಮಹಿ । ಧಿಯೋ॒ ಯೋ ನಃ॑ ಪ್ರಚೋ॒ದಯಾ᳚ತ್ ॥\nಓ॒ಮಾಪೋ॒ ಜ್ಯೋತೀ॒ರಸೋ॒ಽಮೃತ॒೦ ಬ್ರಹ್ಮ॒ ಭೂರ್ಭುವ॒ಸ್ಸ್ವರೋ೦॥',
      );
      expect(component.blocks[10].type, 'verse_viniyoga');
      expect(
        component.blocks[10].text,
        'ಓ೦ ಪ್ರಾ॒ತರ್ದೇ॒ವೀಮದಿ॑ತಿ೦ ಜೋಹವೀಮಿ ಮ॒ಧ್ಯ೦ದಿ॑ನ॒ ಉದಿ॑ತಾ॒ ಸೂರ್ಯ॑ಸ್ಯ ।\nರಾ॒ಯೇ ಮಿ॑ತ್ರಾವರುಣಾ ಸ॒ರ್ವತಾ॒ತೇಳೇ᳚ ತೋ॒ಕಾಯ॒ ತನ॑ಯಾಯ॒ ಶ೦ಯೋಃ।ಅಸಾವಾದಿತ್ಯೋ ಬ್ರಹ್ಮ ।',
      );
    });
  });
}
