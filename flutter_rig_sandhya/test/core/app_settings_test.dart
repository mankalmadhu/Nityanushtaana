import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_rig_sandhya/core/app_settings.dart';

void main() {
  setUp(() {
    SharedPreferences.setMockInitialValues({});
  });

  group('AppSettings Tests', () {
    test('Initial useGoogleFonts is true', () async {
      final settings = AppSettings();
      // wait for the async load in constructor to finish
      await Future.delayed(const Duration(milliseconds: 10));
      expect(settings.useGoogleFonts, true);
    });

    test('toggleFont changes useGoogleFonts value', () async {
      final settings = AppSettings();
      await Future.delayed(const Duration(milliseconds: 10));
      expect(settings.useGoogleFonts, true);

      await settings.toggleFont();
      expect(settings.useGoogleFonts, false);

      await settings.toggleFont();
      expect(settings.useGoogleFonts, true);
    });
  });
}
