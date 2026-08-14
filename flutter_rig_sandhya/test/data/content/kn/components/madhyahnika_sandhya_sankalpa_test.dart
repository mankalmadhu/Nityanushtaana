import 'dart:convert';
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_rig_sandhya/core/models/component.dart';

void main() {
  group('Data Layer - Kannada Content Sanitization', () {
    test(
      'madhyahnika_sandhya_sankalpa content has not been accidentally modified',
      () {
        final file = File(
          'assets/i18n/kn/components/madhyahnika_sandhya_sankalpa.json',
        );
        final component = Component.fromJson(
          jsonDecode(file.readAsStringSync()),
        );
        expect(component.blocks.length, 2);
        expect(component.blocks[0].type, 'heading');
        expect(component.blocks[0].text, 'ಸ೦ಕಲ್ಪ');
        expect(component.blocks[1].type, 'verse_sankalpa');
        expect(
          component.blocks[1].text,
          'ಆಚಮ್ಯ, ಪ್ರಾಣಾನಾಯಮ್ಯ, ದೇಶಕಾಲೌ ಸ೦ಕೀರ್ತ್ಯ, ಏವ೦ಗುಣ ವಿಶೇಷಣ ವಿಶಿಷ್ಟಾಯಾ೦ ಶುಭತಿಥೌ\nಮಮ ಉಪಾತ್ತ ಸಮಸ್ತ ದುರಿತಕ್ಷಯದ್ವಾರಾ ಶ್ರೀ ಪರಮೇಶ್ವರ ಪ್ರೀತ್ಯರ್ಥ೦ ಮಾಧ್ಯಾಹ್ನಿಕ ಸ೦ಧ್ಯಾ೦ ಉಪಾಸ್ಯೇ ॥',
        );
      },
    );
  });
}
