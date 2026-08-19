import 'dart:convert';
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_rig_sandhya/core/models/component.dart';

void main() {
  group('Data Layer - Kannada Content Sanitization', () {
    test('punah_puja content has not been accidentally modified', () {
      final file = File('assets/i18n/kn/components/punah_puja.json');
      final component = Component.fromJson(jsonDecode(file.readAsStringSync()));
      expect(component.blocks.length, 3);
      expect(component.blocks[0].type, 'heading');
      expect(component.blocks[0].text, 'ಪುನಃಪೂಜಾ');
      expect(component.blocks[1].type, 'instruction');
      expect(component.blocks[1].text, 'ಅಗ್ನಿಗೆ ಅಭಿಮುಖವಾಗಿ ಕುಳಿತು');
      expect(component.blocks[2].type, 'verse_viniyoga');
      expect(
        component.blocks[2].text,
        'ಹೋಮಾಂತೇ ಆಗ್ನಿ ಪುರುಷಾಯ ನಮಃ । ಅಕ್ಷತಾಂ ಸಮರ್ಪಯಾಮಿ । ಮಂಗಳದ್ರವ್ಯಾಣಿ ಸಮರ್ಪಯಾಮಿ ।\nಓಂ ಭೂರ್ಭುವ॒ಸ್ಸ್ವಃ ।\nಓಂ ಭೂರ್ಭುವ॒ಸ್ಸ್ವಃ ।\nಯಥಾ ಭಾಗಶಃ ಆಜ್ಯೋಪಹಾರ ನಿವೇದನಂ ಸಮರ್ಪಯಾಮಿ ।',
      );
    });
  });
}
