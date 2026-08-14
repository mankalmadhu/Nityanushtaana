import 'dart:convert';
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_rig_sandhya/core/models/component.dart';

void main() {
  group('Data Layer - Kannada Content Sanitization', () {
    test('prokshana content has not been accidentally modified', () {
      final file = File('assets/i18n/kn/components/prokshana.json');
      final component = Component.fromJson(jsonDecode(file.readAsStringSync()));
      
      // Content assertions
      expect(component.id, 'prokshana');
            // Strict Content assertions for prokshana
      expect(component.blocks.length, 2);
      expect(component.blocks.first.text, 'ಪ್ರೋಕ್ಷಣ');
    });
  });
}
