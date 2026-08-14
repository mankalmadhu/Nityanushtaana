import 'dart:convert';
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_rig_sandhya/core/models/ritual.dart';

void main() {
  group('Data Layer - Kannada Ritual Sanitization', () {
    test('sayam_sandhya ritual has not been accidentally modified', () {
      final file = File('assets/i18n/kn/rituals/sayam_sandhya.json');
      final ritual = Ritual.fromJson(jsonDecode(file.readAsStringSync()));
      expect(ritual.pages.length, 14);
      expect(ritual.pages[0].componentIds.length, 2);
      expect(ritual.pages[0].componentIds[0], 'aasana_soochane');
      expect(ritual.pages[0].componentIds[1], 'aachamaneya');
      expect(ritual.pages[1].componentIds.length, 2);
      expect(ritual.pages[1].componentIds[0], 'prokshana');
      expect(ritual.pages[1].componentIds[1], 'aachamaneya');
      expect(ritual.pages[2].componentIds.length, 1);
      expect(ritual.pages[2].componentIds[0], 'sayam_sandhya_sankalpa');
      expect(ritual.pages[3].componentIds.length, 1);
      expect(ritual.pages[3].componentIds[0], 'sayam_marjane');
      expect(ritual.pages[4].componentIds.length, 1);
      expect(ritual.pages[4].componentIds[0], 'aachamaneya');
      expect(ritual.pages[5].componentIds.length, 2);
      expect(ritual.pages[5].componentIds[0], 'dwiteya_marjane');
      expect(ritual.pages[5].componentIds[1], 'visarjane');
      expect(ritual.pages[6].componentIds.length, 1);
      expect(ritual.pages[6].componentIds[0], 'aachamaneya');
      expect(ritual.pages[7].componentIds.length, 1);
      expect(ritual.pages[7].componentIds[0], 'sayam_arghya_sankalpa');
      expect(ritual.pages[8].componentIds.length, 1);
      expect(ritual.pages[8].componentIds[0], 'sayam_arghya_pradana');
      expect(ritual.pages[9].componentIds.length, 1);
      expect(ritual.pages[9].componentIds[0], 'aachamaneya');
      expect(ritual.pages[10].componentIds.length, 1);
      expect(ritual.pages[10].componentIds[0], 'sayam_gayatri_japa');
      expect(ritual.pages[11].componentIds.length, 1);
      expect(ritual.pages[11].componentIds[0], 'sayam_upasthana');
      expect(ritual.pages[12].componentIds.length, 2);
      expect(ritual.pages[12].componentIds[0], 'aachamaneya');
      expect(ritual.pages[12].componentIds[1], 'sayam_samarpana');
      expect(ritual.pages[13].componentIds.length, 1);
      expect(ritual.pages[13].componentIds[0], 'aparadha_kshamapana');
    });
  });
}
