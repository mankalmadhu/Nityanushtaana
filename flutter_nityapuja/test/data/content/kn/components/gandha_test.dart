import 'dart:convert';
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_nityapuja/core/models/component.dart';

void main() {
  group('Data Layer - gandha content', () {
    test('gandha has correct block count and types', () {
      final file = File('assets/i18n/kn/components/gandha.json');
      final component = Component.fromJson(jsonDecode(file.readAsStringSync()));
      expect(component.id, 'gandha');
      expect(component.blocks.length, 3);
      expect(component.blocks[0].type, 'heading');
      expect(component.blocks[0].text, 'ಗಂಧ');
      expect(component.blocks[1].type, 'verse_viniyoga');
      expect(component.blocks[2].type, 'vedic_instruction');
    });
  });
}
