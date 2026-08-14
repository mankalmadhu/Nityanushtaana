import 'dart:convert';
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_rig_sandhya/core/models/component.dart';

void main() {
  group('Data Layer - Kannada Content Sanitization', () {
    test('visarjane content has not been accidentally modified', () {
      final file = File('assets/i18n/kn/components/visarjane.json');
      final component = Component.fromJson(jsonDecode(file.readAsStringSync()));
      expect(component.blocks.length, 3);
      expect(component.blocks[0].type, 'heading');
      expect(component.blocks[0].text, 'ವಿಸರ್ಜನೆ');
      expect(component.blocks[1].type, 'verse_sankalpa');
      expect(component.blocks[1].text, 'ಋತ೦ಚ ಸತ್ಯ೦ಚ ಇತ್ಯಸ್ಯ ಸೂಕ್ತಸ್ಯ ಅಘಮರ್ಷಣ ಋಷಿಃ\nಭಾವವೃತ್ತೋ ದೇವತಾ ಅನುಷ್ಟುಭ್ ಛ೦ದಃ ಪಾಪ ಪುರುಷ ವಿಸರ್ಜನೆ ವಿನಿಯೋಗಃ ।');
      expect(component.blocks[2].type, 'verse_viniyoga');
      expect(component.blocks[2].text, 'ಓ೦ ಋ॒ತ೦ ಚ॑ ಸ॒ತ್ಯ೦ ಚಾ॒ಭೀ᳚ದ್ಧಾ॒ತ್ತಪ॒ಸೋಽಧ್ಯ॑ಜಾಯತ । ತತೋ॒ ರಾತ್ರ್ಯಾ॑ಜಾಯತ॒ ತತಃ॑ ಸಮು॒ದ್ರೋ ಅ᳚ರ್ಣ॒ವಃ ।\nಸ॒ಮು॒ದ್ರಾದ᳚ರ್ಣ॒ವಾದಧಿ॑ ಸ೦ವತ್ಸ॒ರೋ ಅ॑ಜಾಯತ । ಅ॒ಹೋ॒ರಾ॒ತ್ರಾಣಿ॑ ವಿ॒ದಧ॒ದ್ವಿಶ್ವ॑ಸ್ಯ ಮಿಷ॒ತೋ ವ॒ಶೀ ।\nಸೂ॒ರ್ಯಾ॒ ಚ॒೦ದ್ರ॒ಮಸೌ᳚ ಧಾ॒ತಾ ಯ॑ಥಾ ಪೂ॒ರ್ವಮ॑ಕಲ್ಪಯತ್ । ದಿವ᳚೦ ಚ ಪೃಥಿ॒ವೀ೦ ಚಾ॒೦ತರಿ॑ಕ್ಷ॒ಮಥೋ॒ ಸ್ವಃ॑ ।\nದ್ರು॒ಪ॒ದಾದಿ॑ವ ಮು೦ಚತು । ದ್ರು॒ಪ॒ದಾ॑ದಿ॒ವೇನ್ಮು॑ಮುಚಾ॒ನಃ । ಸ್ವಿ॒ನ್ನಃ ಸ್ನಾ॒ತ್ವೀ ಮಲಾ॑ದಿವ ।\nಪೂ॒ತ೦ ಪವಿತ್ರೇ॑ಣೇ॒ವಾಜ್ಯ᳚೦ ।ಆಪಃ॑ ಶ್ಯು೦ಧ೦ತು॒ ಮೈನ॑ಸಃ । (ಹಸ್ತ೦ ಪ್ರಕ್ಷಾಳ್ಯ)');
    });
  });
}
