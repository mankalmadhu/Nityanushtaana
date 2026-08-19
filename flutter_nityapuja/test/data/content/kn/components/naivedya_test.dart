import 'dart:convert';
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_nityapuja/core/models/component.dart';

void main() {
  group('Data Layer - naivedya content', () {
    test('naivedya has correct block count and types', () {
      final file = File('assets/i18n/kn/components/naivedya.json');
      final component = Component.fromJson(jsonDecode(file.readAsStringSync()));
      expect(component.id, 'naivedya');
      expect(component.blocks.length, 8);
      expect(component.blocks[0].type, 'heading');
      expect(component.blocks[0].text, 'ನೈವೇದ್ಯ');
      expect(component.blocks[1].type, 'instruction');
      expect(component.blocks[2].type, 'verse_viniyoga');
      expect(component.blocks[3].type, 'verse_viniyoga');
      expect(component.blocks[4].type, 'vedic_instruction');
      expect(component.blocks[5].type, 'verse_viniyoga');
      expect(component.blocks[6].type, 'verse_viniyoga');
      expect(component.blocks[7].type, 'vedic_instruction');
    });
  });
}
