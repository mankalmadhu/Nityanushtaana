import 'dart:convert';
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_rig_sandhya/core/models/component.dart';

void main() {
  group('Data Layer - Kannada Content Sanitization', () {
    test('dwiteya_marjane content has not been accidentally modified', () {
      final file = File('assets/i18n/kn/components/dwiteya_marjane.json');
      final component = Component.fromJson(jsonDecode(file.readAsStringSync()));
      expect(component.blocks.length, 6);
      expect(component.blocks[0].type, 'heading');
      expect(component.blocks[0].text, 'ಮಾರ್ಜನೆ');
      expect(component.blocks[1].type, 'verse_sankalpa');
      expect(component.blocks[1].text, 'ಆಪೋಹಿಷ್ಠೇತಿ ನವರ್ಚಸ್ಯ ಸೂಕ್ತಸ್ಯ ಅ೦ಬರೀಶಃ ಸಿ೦ಧು ದ್ವೀಪ\nಆಪೋ ಗಾಯತ್ರಿ ಪ೦ಚಮೀ ವರ್ಧಮಾನಾ ಸಪ್ತಮೀ ಪ್ರತಿಷ್ಠಾ ಅ೦ತ್ಯೇ ದ್ವೇ ಅನುಷ್ಟುಭೌ\nದ್ವಿತೀಯ ಮಾರ್ಜನೆ ವಿನಿಯೋಗಃ ॥');
      expect(component.blocks[2].type, 'verse_viniyoga');
      expect(component.blocks[2].text, 'ಓ೦ ಆಪೋ॒ಹಿಷ್ಠಾ ಮ॑ಯೋ॒ಭುವ॒ಸ್ತಾನ॑ ಊ॒ರ್ಜೇ ದ॑ಧಾತನ । ಮ॒ಹೇರಣಾ᳚ಯ॒ ಚಕ್ಷ॑ಸೇ ॥\nಯೋವಃ॑ ಶಿ॒ವತ॑ಮೋ॒ರಸ॒ಸ್ತಸ್ಯ॑ ಭಾಜಯತೇ॒ಹನಃ॑ । ಉ॒ಶ॒ತೀರಿ॑ವ ಮಾ॒ತರಃ॑ ।\nತಸ್ಮಾ॒ ಅರ᳚೦ಗ ಮಾ॒ಮವೋ॒ಯಸ್ಯ॒ಕ್ಷಯಾ᳚ಯ॒ ಜಿನ್ವ॑ಥ । ಆಪೋ᳚ ಜ॒ನಯ॑ಥಾಚನಃ ॥');
      expect(component.blocks[3].type, 'verse_viniyoga');
      expect(component.blocks[3].text, 'ಓ೦ ಭೂಃ ಓ೦ ಭುವಃ ಓ೦ ಸುವಃ ಓ೦ ಮಹಃ ಓ೦ ಜನಃ ಓ೦ ತಪಃ ಓ೦ ಸತ್ಯಮ್ ॥');
      expect(component.blocks[4].type, 'verse_viniyoga');
      expect(component.blocks[4].text, 'ಓ೦ ತತ್ಸ॑ವಿ॒ತುರ್ವರೇ᳚ಣ್ಯ॒೦ ಭರ್ಗೋ᳚ ದೇ॒ವಸ್ಯ॑ ಧೀಮಹಿ । ಧಿಯೋ॒ ಯೋ ನಃ॑ ಪ್ರಚೋ॒ದಯಾ᳚ತ್ ॥');
      expect(component.blocks[5].type, 'verse_viniyoga');
      expect(component.blocks[5].text, 'ಓ೦ ಶ೦ ನೋ᳚ ದೇ॒ವೀರ॒ಭಿಷ್ಟ॑ಯ॒ ಆಪೋ᳚ ಭವ೦ತು ಪೀ॒ತಯೇ᳚। ಶ೦ಯೋರ॒ಭಿಸ್ರ॑ವ೦ತು ನಃ । ಈಶಾ᳚ನಾ॒ವಾರ್ಯಾ᳚ಣಾ॒೦ ಕ್ಷಯ᳚೦ತೀಶ್ಚರ್ಷಣೀ॒ನಾಮ್ ।\nಅ॒ಪೋಯಾ᳚ಚಾಮಿ ಭೇಷ॒ಜಮ್।ಅ॒ಪ್ಸುಮೇ॒ ಸೋಮೋ᳚ ಅಬ್ರವೀದ॒೦ತರ್ವಿಶ್ವಾ᳚ನಿ ಭೇಷ॒ಜಾ ।ಅ॒ಗ್ನಿ೦ ಚ॑ ವಿ॒ಶ್ವಶ᳚೦ಭುವಮ್।\nಆಪಃ॑ ಪೃಣೀ॒ತ ಭೇ᳚ಷ॒ಜ೦ ವರೂ᳚ಥ೦ ತ॒ನ್ವೇ॒(ಏ॑᳚೩) ಮಮ॑। ಜ್ಯೋಕ್ಚ॒ ಸೂರ್ಯ᳚೦ ದೃ॒ಶೇ ।\nಓ೦ ಇ॒ದಮಾ᳚ಪಃ॒ ಪ್ರವ॑ಹತ॒ ಯತ್ಕಿ೦ ಚ॑ ದುರಿ॒ತ೦ ಮಯೀ॑। ಯದ್ವಾ॒ಹಮ॑ಭಿದು॒ದ್ರೋಹ॒ ಯದ್ವಾ᳚ ಶೇ॒ಪ ಉ॒ತಾನೃ॑ತಮ್ ।ಓ೦ ಆಪೊ᳚ ಅ॒ದ್ಯಾನ್ವ॑ಚಾರಿಷ॒೦ ರಸೇ᳚ನ॒ ಸಮ॑ಗಸ್ಮಹಿ ।\nಪಯ॑ಸ್ವಾನಗ್ನ॒ ಆಗ॑ಹಿ॒ ತ೦ ಮಾ॒ ಸ೦ಸೃ॑ಜ॒ ವರ್ಚ॑ಸಾ । ಸ॒ಸ್ರುಷೀ॒ಸ್ತದ॑ಪಸೋ॒ ದಿವಾ॒ ನಕ್ತ᳚೦ ಚ ಸ॒ಸ್ರುಷೀಃ᳚ ।\nವರೇ᳚ಣ್ಯಕ್ರತೂರ॒ಹಮಾ ದೇ॒ವೀರವ॑ಸೇ ಹುವೇ ॥ ಓ॒ಮಾಪೋ॒ ಜ್ಯೋತೀ॒ರಸೋ॒ಽಮೃತ॒೦ ಬ್ರಹ್ಮ ಭೂರ್ಭುವ॒ಸ್ಸ್ವರೋ೦॥');
    });
  });
}
