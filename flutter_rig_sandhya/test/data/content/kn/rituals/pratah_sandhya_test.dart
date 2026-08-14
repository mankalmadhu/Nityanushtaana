import 'dart:convert';
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_rig_sandhya/core/models/ritual.dart';

void main() {
  group('Data Layer - Kannada Content Sanitization', () {
    test('Pratah Sandhya ritual structure has all 14 pages intact', () {
      final file = File('assets/i18n/kn/rituals/pratah_sandhya.json');
      final ritual = Ritual.fromJson(jsonDecode(file.readAsStringSync()));
      
      expect(ritual.id, 'pratah_sandhya');
      expect(ritual.title, 'ಪ್ರಾತಸ್ಸ೦ಧ್ಯಾ');
      expect(ritual.pages.length, 14, reason: 'Pratah Sandhya must have exactly 14 pages');
      
      // Spot check a few critical pages
      // Page 1 should start with Aasana Soochane
      expect(ritual.pages[0].componentIds, contains('aasana_soochane'));
      
      // Aachamaneya appears multiple times (Pages 1, 2, 5, 7, 10, 13)
      expect(ritual.pages[4].componentIds.first, 'aachamaneya');
      expect(ritual.pages[6].componentIds.first, 'aachamaneya');
      
      // Final page should be Aparadha Kshamapana
      expect(ritual.pages[13].componentIds.first, 'aparadha_kshamapana');
    });
  });
}
