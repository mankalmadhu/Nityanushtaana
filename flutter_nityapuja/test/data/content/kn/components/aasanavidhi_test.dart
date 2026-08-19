import 'dart:convert';
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_nityapuja/core/models/component.dart';

void main() {
  group('Data Layer - aasanavidhi content', () {
    test('aasanavidhi has correct block count and types', () {
      final file = File('assets/i18n/kn/components/aasanavidhi.json');
      final component = Component.fromJson(jsonDecode(file.readAsStringSync()));
      expect(component.id, 'aasanavidhi');
      expect(component.blocks.length, 6);
      expect(component.blocks[0].type, 'heading');
      expect(component.blocks[0].text, 'ಭೂತೋತ್ಸರಣ');
      expect(component.blocks[1].type, 'verse_viniyoga');
      expect(component.blocks[2].type, 'verse_viniyoga');
      expect(component.blocks[3].type, 'heading');
      expect(component.blocks[3].text, 'ಆಸನವಿಧಿ');
      expect(component.blocks[4].type, 'verse_viniyoga');
      expect(component.blocks[5].type, 'instruction');
    });
  });
}
