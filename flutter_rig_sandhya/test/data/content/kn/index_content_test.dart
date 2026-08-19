import 'dart:convert';
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_rig_sandhya/core/models/index.dart';

void main() {
  group('Data Layer - Kannada Content Sanitization', () {
    test('App Index content has not been accidentally modified', () {
      final file = File('assets/i18n/kn/index.json');
      final index = AppIndex.fromJson(jsonDecode(file.readAsStringSync()));

      expect(index.language, 'kn');
      expect(
        index.items.length,
        7,
        reason: 'The index must contain exactly 7 rituals',
      );

      // Verify specific Kannada titles and image mappings
      expect(index.items[0].id, 'pratah_sandhya');
      expect(index.items[0].title, 'ಪ್ರಾತಸ್ಸಂಧ್ಯಾ');
      expect(index.items[0].image, 'sandhya.png');

      expect(index.items[2].id, 'madhyahnika_sandhya');
      expect(index.items[2].title, 'ಮಾಧ್ಯಾಹ್ನಿಕಸಂಧ್ಯಾ');

      expect(index.items[5].id, 'yajnopaveeta');
      expect(index.items[5].title, 'ಯಜ್ಞೋಪವೀತ');
      expect(index.items[5].image, 'yajnopaveta.png');
    });
  });
}
