import 'dart:convert';
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_rig_sandhya/core/models/component.dart';

void main() {
  group('Data Layer - Kannada Content Sanitization', () {
    test('aparadha_kshamapana content has not been accidentally modified', () {
      final file = File('assets/i18n/kn/components/aparadha_kshamapana.json');
      final component = Component.fromJson(jsonDecode(file.readAsStringSync()));
      
      // Content assertions
      expect(component.id, 'aparadha_kshamapana');
            // Strict Content assertions for aparadha_kshamapana
      expect(component.blocks.length, 6);
      expect(component.blocks.first.text, 'ಅಪರಾಧ ಕ್ಷಮಾಪಣ');
    });
  });
}
