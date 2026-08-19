import 'dart:convert';
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_nityapuja/core/models/component.dart';

void main() {
  group('Data Layer - shankhapuja content', () {
    test('shankhapuja has correct block count and types', () {
      final file = File('assets/i18n/kn/components/shankhapuja.json');
      final component = Component.fromJson(jsonDecode(file.readAsStringSync()));
      expect(component.id, 'shankhapuja');
      expect(component.blocks.length, 9);
      expect(component.blocks[0].type, 'heading');
      expect(component.blocks[0].text, 'ಶಂಖಪೂಜಾ');
      expect(component.blocks[1].type, 'vedic_instruction');
      expect(component.blocks[2].type, 'instruction');
      expect(component.blocks[3].type, 'verse_viniyoga');
      expect(component.blocks[4].type, 'verse_viniyoga');
      expect(component.blocks[5].type, 'verse_viniyoga');
      expect(component.blocks[6].type, 'verse_viniyoga');
      expect(component.blocks[7].type, 'vedic_instruction');
      expect(component.blocks[8].type, 'instruction');
    });
  });
}
