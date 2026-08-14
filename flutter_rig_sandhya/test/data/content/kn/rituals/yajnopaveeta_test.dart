import 'dart:convert';
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_rig_sandhya/core/models/ritual.dart';

void main() {
  group('Data Layer - Kannada Ritual Sanitization', () {
    test('yajnopaveeta ritual has not been accidentally modified', () {
      final file = File('assets/i18n/kn/rituals/yajnopaveeta.json');
      final ritual = Ritual.fromJson(jsonDecode(file.readAsStringSync()));
      expect(ritual.pages.length, 2);
      expect(ritual.pages[0].componentIds.length, 1);
      expect(ritual.pages[0].componentIds[0], 'yajnopaveeta_dharana');
      expect(ritual.pages[1].componentIds.length, 1);
      expect(ritual.pages[1].componentIds[0], 'yajnopaveeta_visarjana');
    });
  });
}
