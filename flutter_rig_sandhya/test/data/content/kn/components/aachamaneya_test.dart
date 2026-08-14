import 'dart:convert';
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_rig_sandhya/core/models/component.dart';

void main() {
  group('Data Layer - Kannada Content Sanitization', () {
    test('Aachamaneya content has not been accidentally modified', () {
      final file = File('assets/i18n/kn/components/aachamaneya.json');
      final component = Component.fromJson(jsonDecode(file.readAsStringSync()));
      
      // Content assertions - guards against accidental typos in the JSON
      expect(component.id, 'aachamaneya');
      expect(component.blocks[0].text, 'ಆಚಮನೀಯ');
      expect(
        component.blocks[1].text, 
        contains('ಕೇಶವಾಯ ಸ್ವಾಹಾ'),
        reason: 'The first vedic verse must contain Keshavaaya Swaahaa',
      );
    });
  });
}
