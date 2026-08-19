import 'dart:convert';
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_rig_sandhya/core/models/component.dart';

void main() {
  group('Data Layer - JSON Parsing', () {
    test('Block.fromJson parses type and text correctly', () {
      final json = {'type': 'heading', 'text': 'Test heading'};
      final block = Block.fromJson(json);
      expect(block.type, 'heading');
      expect(block.text, 'Test heading');
    });

    test('Component.fromJson parses id and blocks correctly', () {
      final json = {
        'id': 'test_component',
        'blocks': [
          {'type': 'heading', 'text': 'Hello'},
          {'type': 'instruction', 'text': 'Do this'},
        ],
      };
      final component = Component.fromJson(json);
      expect(component.id, 'test_component');
      expect(component.blocks.length, 2);
      expect(component.blocks[0].type, 'heading');
      expect(component.blocks[1].type, 'instruction');
    });

    test('All Kannada component JSON files parse without error', () {
      final dir = Directory('assets/i18n/kn/components');
      final files = dir.listSync().whereType<File>().toList();
      expect(
        files.isNotEmpty,
        isTrue,
        reason: 'Expected component files to exist',
      );
      for (final file in files) {
        expect(
          () => Component.fromJson(jsonDecode(file.readAsStringSync())),
          returnsNormally,
          reason: 'Failed to parse ${file.path}',
        );
      }
    });

    test('All component JSON files have a non-empty id', () {
      final dir = Directory('assets/i18n/kn/components');
      for (final file in dir.listSync().whereType<File>()) {
        final component = Component.fromJson(
          jsonDecode(file.readAsStringSync()),
        );
        expect(
          component.id.isNotEmpty,
          isTrue,
          reason: '${file.path} has empty id',
        );
      }
    });

    test('All component JSON files have at least one block', () {
      final dir = Directory('assets/i18n/kn/components');
      for (final file in dir.listSync().whereType<File>()) {
        final component = Component.fromJson(
          jsonDecode(file.readAsStringSync()),
        );
        expect(
          component.blocks.isNotEmpty,
          isTrue,
          reason: '${file.path} has no blocks',
        );
      }
    });

    test('All blocks have non-empty type and text', () {
      final dir = Directory('assets/i18n/kn/components');
      for (final file in dir.listSync().whereType<File>()) {
        final component = Component.fromJson(
          jsonDecode(file.readAsStringSync()),
        );
        for (final block in component.blocks) {
          expect(
            block.type.isNotEmpty,
            isTrue,
            reason: '${file.path} has a block with empty type',
          );
          expect(
            block.text.isNotEmpty,
            isTrue,
            reason: '${file.path} has a block with empty text',
          );
        }
      }
    });

    test('All blocks have valid block types', () {
      const validTypes = {
        'heading',
        'instruction',
        'verse_viniyoga',
        'vedic_instruction',
        'verse_sankalpa',
      };
      final dir = Directory('assets/i18n/kn/components');
      for (final file in dir.listSync().whereType<File>()) {
        final component = Component.fromJson(
          jsonDecode(file.readAsStringSync()),
        );
        for (final block in component.blocks) {
          expect(
            validTypes.contains(block.type),
            isTrue,
            reason: '${file.path} has unknown block type: "${block.type}"',
          );
        }
      }
    });

    test('No Kannada digit zero (U+0CE6) exists in any JSON text content', () {
      // This is the critical content sanitization test.
      // The Kannada digit zero (ಂ) looks identical to the Anusvara (ಂ)
      // in some fonts but renders differently in standard Unicode fonts
      // like Google Fonts Tiro Kannada. All occurrences should have been
      // replaced with the correct Anusvara (U+0C82).
      const kannadaDigitZero = '\u0CE6'; // U+0CE6
      final dir = Directory('assets/i18n/kn/components');
      for (final file in dir.listSync().whereType<File>()) {
        final content = file.readAsStringSync();
        expect(
          content.contains(kannadaDigitZero),
          isFalse,
          reason:
              '${file.path} contains Kannada digit zero (U+0CE6) instead of Anusvara (U+0C82)',
        );
      }
    });

    test('index.json exists and has valid structure', () {
      final file = File('assets/i18n/kn/index.json');
      expect(file.existsSync(), isTrue, reason: 'index.json not found');
      final json = jsonDecode(file.readAsStringSync());
      expect(json['language'], 'kn');
      expect(json['items'], isA<List>());
      expect((json['items'] as List).isNotEmpty, isTrue);
    });

    test('Each item in index.json maps to an existing ritual file', () {
      final file = File('assets/i18n/kn/index.json');
      final json = jsonDecode(file.readAsStringSync());
      final items = json['items'] as List<dynamic>;
      for (final item in items) {
        final id = item['id'] as String;
        final ritualFile = File('assets/i18n/kn/rituals/$id.json');
        expect(
          ritualFile.existsSync(),
          isTrue,
          reason: 'Ritual file missing for id: $id',
        );
      }
    });
  });
}
