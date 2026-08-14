import 'dart:convert';
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_rig_sandhya/core/models/component.dart';

void main() {
  group('Data Layer - Kannada Content Sanitization', () {
    test('visarjane content has not been accidentally modified', () {
      final file = File('assets/i18n/kn/components/visarjane.json');
      final component = Component.fromJson(jsonDecode(file.readAsStringSync()));
      
      // Content assertions
      expect(component.id, 'visarjane');
            // Strict Content assertions for visarjane
      expect(component.blocks.length, 3);
      expect(component.blocks.first.text, 'ವಿಸರ್ಜನೆ');
    });
  });
}
