import 'dart:convert';
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_rig_sandhya/core/models/component.dart';

void main() {
  group('Data Layer - Kannada Content Sanitization', () {
    test('pratah_gayatri_japa content has not been accidentally modified', () {
      final file = File('assets/i18n/kn/components/pratah_gayatri_japa.json');
      final component = Component.fromJson(jsonDecode(file.readAsStringSync()));
      
      // Content assertions
      expect(component.id, 'pratah_gayatri_japa');
            // Strict Content assertions for pratah_gayatri_japa
      expect(component.blocks.length, 28);
      expect(component.blocks.first.text, 'ಗಾಯತ್ರೀ ಜಪ');
    });
  });
}
