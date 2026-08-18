import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_nityapuja/core/app_settings.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    SharedPreferences.setMockInitialValues({});
  });

  group('AppSettings Tests', () {
    test('Initial language is kn', () async {
      final settings = AppSettings();
      // AppSettings constructor calls _loadSettings which is async.
      // Wait a tick for the async call to finish
      await Future.delayed(const Duration(milliseconds: 100));
      expect(settings.currentLanguage, 'kn');
    });

    test('Can change language', () async {
      final settings = AppSettings();
      await Future.delayed(const Duration(milliseconds: 100));
      
      await settings.changeLanguage('en-US');
      expect(settings.currentLanguage, 'en-US');
    });

    test('Can toggle font', () async {
      final settings = AppSettings();
      await Future.delayed(const Duration(milliseconds: 100));
      
      final initial = settings.useGoogleFonts;
      await settings.toggleFont();
      expect(settings.useGoogleFonts, !initial);
    });
  });
}
