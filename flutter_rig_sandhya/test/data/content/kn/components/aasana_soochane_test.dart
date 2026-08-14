import 'dart:convert';
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_rig_sandhya/core/models/component.dart';

void main() {
  group('Data Layer - Kannada Content Sanitization', () {
    test('aasana_soochane content has not been accidentally modified', () {
      final file = File('assets/i18n/kn/components/aasana_soochane.json');
      final component = Component.fromJson(jsonDecode(file.readAsStringSync()));
      
      // Content assertions
      expect(component.id, 'aasana_soochane');
            // Strict Content assertions for aasana_soochane
      expect(component.blocks.length, 1);
      expect(component.blocks.first.text, 'ಪೂರ್ವ/ಉತ್ತರ ಅಭಿಮುಖವಾಗಿ ಕುಳಿತು');
    });
  });
}
