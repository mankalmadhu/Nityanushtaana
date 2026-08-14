import 'dart:convert';
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_rig_sandhya/core/models/ritual.dart';

void main() {
  group('Data Layer - Kannada Ritual Sanitization', () {
    test('sayam_samidhadana ritual has not been accidentally modified', () {
      final file = File('assets/i18n/kn/rituals/sayam_samidhadana.json');
      final ritual = Ritual.fromJson(jsonDecode(file.readAsStringSync()));
      expect(ritual.pages.length, 10);
      expect(ritual.pages[0].componentIds.length, 2);
      expect(ritual.pages[0].componentIds[0], 'samidha_dana_aasana_soochane');
      expect(ritual.pages[0].componentIds[1], 'aachamaneya');
      expect(ritual.pages[1].componentIds.length, 1);
      expect(ritual.pages[1].componentIds[0], 'sayam_samidha_dana_sankalpa');
      expect(ritual.pages[2].componentIds.length, 1);
      expect(ritual.pages[2].componentIds[0], 'agni_murti_dhyana');
      expect(ritual.pages[3].componentIds.length, 1);
      expect(ritual.pages[3].componentIds[0], 'samidha_dana');
      expect(ritual.pages[4].componentIds.length, 1);
      expect(ritual.pages[4].componentIds[0], 'agni_upasthana');
      expect(ritual.pages[5].componentIds.length, 1);
      expect(ritual.pages[5].componentIds[0], 'raksha_dharana');
      expect(ritual.pages[6].componentIds.length, 2);
      expect(ritual.pages[6].componentIds[0], 'agni_prarthane');
      expect(ritual.pages[6].componentIds[1], 'pravara');
      expect(ritual.pages[7].componentIds.length, 1);
      expect(ritual.pages[7].componentIds[0], 'punah_puja');
      expect(ritual.pages[8].componentIds.length, 2);
      expect(ritual.pages[8].componentIds[0], 'aachamaneya');
      expect(ritual.pages[8].componentIds[1], 'sayam_samidha_dana_samarpana');
      expect(ritual.pages[9].componentIds.length, 1);
      expect(ritual.pages[9].componentIds[0], 'aparadha_kshamapana');
    });
  });
}
