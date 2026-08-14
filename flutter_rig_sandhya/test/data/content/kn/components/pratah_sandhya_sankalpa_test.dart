import 'dart:convert';
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_rig_sandhya/core/models/component.dart';

void main() {
  group('Data Layer - Kannada Content Sanitization', () {
    test('pratah_sandhya_sankalpa content has not been accidentally modified', () {
      final file = File('assets/i18n/kn/components/pratah_sandhya_sankalpa.json');
      final component = Component.fromJson(jsonDecode(file.readAsStringSync()));
      
      // Content assertions
      expect(component.id, 'pratah_sandhya_sankalpa');
            // Strict Content assertions for pratah_sandhya_sankalpa
      expect(component.blocks.length, 6);
      expect(component.blocks.first.text, 'ಪ್ರಾತಃ ಸ೦ಧ್ಯಾ ಸ೦ಕಲ್ಪ');
    });
  });
}
