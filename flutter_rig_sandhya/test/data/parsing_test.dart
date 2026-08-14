import 'dart:convert';
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_rig_sandhya/core/models/component.dart';

void main() {
  group('Data Layer - Schema & Structure', () {
    test('Can parse a valid component JSON into the Dart model', () {
      final file = File('assets/i18n/kn/components/aachamaneya.json');
      final jsonString = file.readAsStringSync();
      final Map<String, dynamic> jsonMap = jsonDecode(jsonString);

      final component = Component.fromJson(jsonMap);

      // Structural assertions only - language agnostic
      expect(component.id, isNotEmpty);
      expect(component.blocks, isNotEmpty);
      expect(component.blocks.first.type, isNotEmpty);
      expect(component.blocks.first.text, isNotNull);
    });
  });
}
