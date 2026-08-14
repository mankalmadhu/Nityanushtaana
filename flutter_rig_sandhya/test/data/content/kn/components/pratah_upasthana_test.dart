import 'dart:convert';
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_rig_sandhya/core/models/component.dart';

void main() {
  group('Data Layer - Kannada Content Sanitization', () {
    test('pratah_upasthana content has not been accidentally modified', () {
      final file = File('assets/i18n/kn/components/pratah_upasthana.json');
      final component = Component.fromJson(jsonDecode(file.readAsStringSync()));
      
      // Content assertions
      expect(component.id, 'pratah_upasthana');
            // Strict Content assertions for pratah_upasthana
      expect(component.blocks.length, 16);
      expect(component.blocks.first.text, 'ಉಪಸ್ಥಾನ');
    });
  });
}
