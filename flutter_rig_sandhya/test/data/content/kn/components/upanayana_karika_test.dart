import 'dart:convert';
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_rig_sandhya/core/models/component.dart';

void main() {
  group('Data Layer - Kannada Content Sanitization', () {
    test('upanayana_karika content has not been accidentally modified', () {
      final file = File('assets/i18n/kn/components/upanayana_karika.json');
      final component = Component.fromJson(jsonDecode(file.readAsStringSync()));
      expect(component.blocks.length, 1);
      expect(component.blocks[0].type, 'verse_viniyoga');
      expect(component.blocks[0].text, 'ಕೃಚ್ಛ್ರ೦ ಚರೇತ್ ಭೋಜನ ವಾಪನೇಚ ನಿರೀಕ್ಷಣ೦ ಸ್ಯಾದುಪಲೇಪನಾದ್ಯ೦ ।\nಸ೦ಸ್ಕೃತ್ಯ ಸರ್ಪಿಃ ಪಟ ಕೃಷ್ಣಚರ್ಮ ಯಜ್ನೋಪವೀತ ಆಚಮನಾದಿ ಹೋಮಃ ।।\nಜಲಾ೦ಜಲಿಃ ಸೂರ್ಯ ನಿರೀಕ್ಷಣ೦ಚ ಕಸ್ಯೇತಿ ಭಾಷಾ ಸ ಗುರುಪ್ರಸಾದಃ ।\nಸಮಿನ್ನಿಧಾನ೦ ಶ್ರವಣೋಪದೇಷಃ ಹೃತ್ಸ್ಪರ್ಷಣ೦ ಮೌ೦ಜೀ ಪಲಾಷದ೦ಡಃ ।।\nಶಿಕ್ಷಾ ತತಸ್ವಿಷ್ಟಕೃದಾದಿ ಹೋಮಃ ಸಮಾಪನ೦ ತತ್ರಚ ಮಾತೃಭಿಕ್ಷಾ ।\nಪುಣ್ಯಾಹ ಪೂಜೇ ಸಾವಿತ್ರ್ಯಾ ನವವಸ್ತ್ರಾದಿ ಧಾರಣ೦ ।।\nಪ್ರದಕ್ಷಿಣಮಪಸ್ಯಿ೦ಚನ್ ಸುಶ್ರವಸ್ ಸುಶ್ರವಾ ಇತಿ ।।\n');
    });
  });
}
