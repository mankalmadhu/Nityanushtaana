import 'dart:convert';
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_nityapuja/core/models/component.dart';

void main() {
  group('Data Layer - deepa content', () {
    test('deepa has correct block count and types', () {
      final file = File('assets/i18n/kn/components/deepa.json');
      final component = Component.fromJson(jsonDecode(file.readAsStringSync()));
      expect(component.id, 'deepa');
      expect(component.blocks.length, 6);
      expect(component.blocks[0].type, 'heading');
      expect(component.blocks[0].text, 'ದೀಪ');
      expect(component.blocks[1].type, 'verse_viniyoga');
      expect(component.blocks[2].type, 'vedic_instruction');
      expect(component.blocks[3].type, 'instruction');
      expect(component.blocks[4].type, 'vedic_instruction');
      expect(component.blocks[5].type, 'instruction');
    });
  });
}
