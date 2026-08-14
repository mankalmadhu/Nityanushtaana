import 'dart:convert';
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_rig_sandhya/core/models/component.dart';

void main() {
  group('Data Layer - Kannada Content Sanitization', () {
    test('pratah_arghya_pradana content has not been accidentally modified', () {
      final file = File('assets/i18n/kn/components/pratah_arghya_pradana.json');
      final component = Component.fromJson(jsonDecode(file.readAsStringSync()));
      
      // Content assertions
      expect(component.id, 'pratah_arghya_pradana');
            // Strict Content assertions for pratah_arghya_pradana
      expect(component.blocks.length, 10);
      expect(component.blocks.first.text, 'ಅರ್ಘ್ಯ ಪ್ರದಾನ');
    });
  });
}
