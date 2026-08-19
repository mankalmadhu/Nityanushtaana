import 'dart:convert';
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_nityapuja/core/models/component.dart';

void main() {
  group('Data Layer - punararghya content', () {
    test('punararghya has correct block count and types', () {
      final file = File('assets/i18n/kn/components/punararghya.json');
      final component = Component.fromJson(jsonDecode(file.readAsStringSync()));
      expect(component.id, 'punararghya');
      expect(component.blocks.length, 4);
      expect(component.blocks[0].type, 'heading');
      expect(component.blocks[0].text, 'ಪುನರ್ರಘ್ಯ');
      expect(component.blocks[1].type, 'verse_viniyoga');
      expect(component.blocks[2].type, 'vedic_instruction');
      expect(component.blocks[3].type, 'instruction');
    });
  });
}
