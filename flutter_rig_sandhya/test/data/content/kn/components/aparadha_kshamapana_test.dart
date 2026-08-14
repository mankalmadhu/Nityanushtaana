import 'dart:convert';
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_rig_sandhya/core/models/component.dart';

void main() {
  group('Data Layer - Kannada Content Sanitization', () {
    test('aparadha_kshamapana content has not been accidentally modified', () {
      final file = File('assets/i18n/kn/components/aparadha_kshamapana.json');
      final component = Component.fromJson(jsonDecode(file.readAsStringSync()));
      expect(component.blocks.length, 6);
      expect(component.blocks[0].type, 'heading');
      expect(component.blocks[0].text, 'ಅಪರಾಧ ಕ್ಷಮಾಪಣ');
      expect(component.blocks[1].type, 'verse_sankalpa');
      expect(
        component.blocks[1].text,
        'ಮಧ್ಯೇ ಮ೦ತ್ರ ತ೦ತ್ರ ಸ್ವರ ವರ್ಣ ಧ್ಯಾನ ನಿಯಮ ಲೋಪ ದೋಷ ಪ್ರಾಯಶ್ಚಿತ್ತಾರ್ಥ೦ ನಾಮತ್ರಯ ಮಹಾ ಮ೦ತ್ರ ಜಪ೦ ಕರಿಷ್ಯೇ ।',
      );
      expect(component.blocks[2].type, 'verse_viniyoga');
      expect(
        component.blocks[2].text,
        'ಅಚ್ಯುತಾಯ ನಮಃ । ಅನ೦ತಾಯ ನಮಃ । ಗೋವಿ೦ದಾಯ ನಮಃ । ಅಚ್ಯುತಾನ೦ತಗೋವಿ೦ದೇಭ್ಯೋ ನಮಃ ।',
      );
      expect(component.blocks[3].type, 'instruction');
      expect(component.blocks[3].text, '(ಮೂರು ಬಾರಿ)');
      expect(component.blocks[4].type, 'verse_viniyoga');
      expect(
        component.blocks[4].text,
        'ಕಾಯೇನ ವಾಚ ಮನಸೇ೦ದ್ರಿಯೈರ್ವಾ ಬುಧ್ಧ್ಯಾತ್ಮನಾವಾ ಪ್ರಕೃತೇಸ್ಸ್ವಭಾವಾತ್ ।\nಕರೋಮಿ ಯದ್ಯತ್ ಸಕಲ೦ ಪರಸ್ಮ್ಯೆ ಶ್ರೀಮನ್ನಾರಯಣಾಯೇತಿ ಸಮರ್ಪಯಾಮಿ ।',
      );
      expect(component.blocks[5].type, 'verse_viniyoga');
      expect(
        component.blocks[5].text,
        'ಓ೦ ಶಾ೦ತಿ॒ಶ್ಯಾ೦ತಿ॒ಶ್ಯಾ೦ತಿಃ॑ । ಹರಿಃ ಓ೦ ತತ್ಸತ್ । ತತ್ಸಬ್ರಹ್ಮಾರ್ಪಣಮಸ್ತು ॥',
      );
    });
  });
}
