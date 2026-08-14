import 'dart:convert';
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_rig_sandhya/core/models/component.dart';

void main() {
  group('Data Layer - Kannada Content Sanitization', () {
    test('sayam_sandhya_sankalpa content has not been accidentally modified', () {
      final file = File(
        'assets/i18n/kn/components/sayam_sandhya_sankalpa.json',
      );
      final component = Component.fromJson(jsonDecode(file.readAsStringSync()));
      expect(component.blocks.length, 6);
      expect(component.blocks[0].type, 'heading');
      expect(component.blocks[0].text, 'ಸಾಯ೦ ಸ೦ಧ್ಯಾ ಸ೦ಕಲ್ಪ');
      expect(component.blocks[1].type, 'verse_sankalpa');
      expect(
        component.blocks[1].text,
        'ಪ್ರಣವಸ್ಯ ಪರಬ್ರಹ್ಮ ಋಷಿಃ ಪರಮಾತ್ಮಾ ದೇವತಾ ದೈವೀ ಗಾಯತ್ರೀ ಛ೦ದಃ ಪ್ರಾಣಾಯಾಮೇ ವಿನಿಯೋಗಃ ।',
      );
      expect(component.blocks[2].type, 'verse_viniyoga');
      expect(
        component.blocks[2].text,
        'ಓ೦ ಭೂಃ ಓ೦ ಭುವಃ ಓ೦ ಸುವಃ ಓ೦ ಮಹಃ ಓ೦ ಜನಃ ಓ೦ ತಪಃ ಓ೦ ಸತ್ಯಮ್ ॥',
      );
      expect(component.blocks[3].type, 'verse_viniyoga');
      expect(
        component.blocks[3].text,
        'ಓ೦ ತತ್ಸ॑ವಿ॒ತುರ್ವರೇ᳚ಣ್ಯ॒೦ ಭರ್ಗೋ᳚ ದೇ॒ವಸ್ಯ॑ ಧೀಮಹಿ । ಧಿಯೋ॒ ಯೋ ನಃ॑ ಪ್ರಚೋ॒ದಯಾ᳚ತ್ ॥',
      );
      expect(component.blocks[4].type, 'verse_viniyoga');
      expect(
        component.blocks[4].text,
        'ಓ॒ಮಾಪೋ॒ ಜ್ಯೋತೀ॒ರಸೋ॒ಽಮೃತ॒೦ ಬ್ರಹ್ಮ॒ ಭೂರ್ಭುವ॒ಸ್ಸ್ವರೋ೦॥',
      );
      expect(component.blocks[5].type, 'verse_sankalpa');
      expect(
        component.blocks[5].text,
        'ಮಮ ಉಪಾತ್ತ ಸಮಸ್ತ ದುರಿತಕ್ಷಯದ್ವಾರಾ ಶ್ರೀ ಪರಮೇಶ್ವರ ಪ್ರೀತ್ಯರ್ಥ೦ ಸಾಯ೦ ಸ೦ಧ್ಯಾ೦ ಉಪಾಸ್ಯೇ ॥',
      );
    });
  });
}
