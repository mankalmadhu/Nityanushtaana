import 'dart:convert';
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_nityapuja/core/models/component.dart';

void main() {
  group('Data Layer - mahaganapatiprarthane content', () {
    test('mahaganapatiprarthane has correct block count and types', () {
      final file = File('assets/i18n/kn/components/mahaganapatiprarthane.json');
      final component = Component.fromJson(jsonDecode(file.readAsStringSync()));
      expect(component.id, 'mahaganapatiprarthane');
      expect(component.blocks.length, 5);
      expect(component.blocks[0].type, 'heading');
      expect(component.blocks[0].text, 'ಮಹಾಗಣಪತಿ ಪ್ರಾರ್ಥನೆ');
      expect(component.blocks[1].type, 'verse_viniyoga');
      expect(component.blocks[2].type, 'verse_viniyoga');
      expect(component.blocks[3].type, 'verse_viniyoga');
      expect(component.blocks[4].type, 'instruction');
    });
  });
}
