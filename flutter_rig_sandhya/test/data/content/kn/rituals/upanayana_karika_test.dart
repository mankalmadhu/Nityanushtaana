import 'dart:convert';
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_rig_sandhya/core/models/ritual.dart';

void main() {
  group('Data Layer - Kannada Ritual Sanitization', () {
    test('upanayana_karika ritual has not been accidentally modified', () {
      final file = File('assets/i18n/kn/rituals/upanayana_karika.json');
      final ritual = Ritual.fromJson(jsonDecode(file.readAsStringSync()));
      expect(ritual.pages.length, 1);
      expect(ritual.pages[0].componentIds.length, 1);
      expect(ritual.pages[0].componentIds[0], 'upanayana_karika');
    });
  });
}
