import 'dart:convert';
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_rig_sandhya/core/models/component.dart';

void main() {
  group('Data Layer - Kannada Content Sanitization', () {
    test('aachamaneya content has not been accidentally modified', () {
      final file = File('assets/i18n/kn/components/aachamaneya.json');
      final component = Component.fromJson(jsonDecode(file.readAsStringSync()));
      expect(component.blocks.length, 3);
      expect(component.blocks[0].type, 'heading');
      expect(component.blocks[0].text, 'ಆಚಮನೀಯ');
      expect(component.blocks[1].type, 'verse_viniyoga');
      expect(component.blocks[1].text, 'ಕೇಶವಾಯ ಸ್ವಾಹಾ । ನಾರಾಯಣಾಯ ಸ್ವಾಹಾ ।ಮಾಧವಾಯ ಸ್ವಾಹಾ । ಗೋವಿ೦ದಾಯ ನಮಃ ॥');
      expect(component.blocks[2].type, 'verse_viniyoga');
      expect(component.blocks[2].text, 'ವಿಷ್ಣವೇ ನಮಃ । ಮಧುಸೂದನಾಯ ನಮಃ । ತ್ರಿವಿಕ್ರಮಾಯ ನಮಃ । ವಾಮನಾಯ ನಮಃ ।ಶ್ರೀಧರಾಯ ನಮಃ । ಹೃಷೀಕೇಶಾಯ ನಮಃ । ಪದ್ಮನಾಭಾಯ ನಮಃ । ದಾಮೋದರಾಯ ನಮಃ । ಸ೦ಕರ್ಷಣಾಯ ನಮಃ। ವಾಸುದೇವಾಯ ನಮಃ । ಪ್ರದ್ಯುಮ್ನಾಯ ನಮಃ । ಅನಿರುದ್ಧಾಯ ನಮಃ । ಪುರುಷೋತ್ತಮಾಯ ನಮಃ । ಅಧೋಕ್ಷಜಾಯ ನಮಃ । ನಾರಸಿ೦ಹಾಯ ನಮಃ । ಅಚ್ಯುತಾಯ ನಮಃ । ಜನಾರ್ದನಾಯ ನಮಃ । ಉಪೇ೦ದ್ರಾಯ ನಮಃ । ಹರಯೇ ನಮಃ । ಶ್ರೀ ಕೃಷ್ಣಾಯ ನಮಃ ॥');
    });
  });
}
