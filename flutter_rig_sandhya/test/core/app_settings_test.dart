import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_rig_sandhya/core/app_settings.dart';

void main() {
  group('AppSettings Tests', () {
    test('Initial useGoogleFonts is true', () {
      final settings = AppSettings();
      expect(settings.useGoogleFonts, true);
    });

    test('toggleFont changes useGoogleFonts value', () {
      final settings = AppSettings();
      expect(settings.useGoogleFonts, true);
      
      settings.toggleFont();
      expect(settings.useGoogleFonts, false);
      
      settings.toggleFont();
      expect(settings.useGoogleFonts, true);
    });
  });
}
