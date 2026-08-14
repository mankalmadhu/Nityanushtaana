import 'dart:convert';
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_rig_sandhya/core/models/ritual.dart';

void main() {
  group('Data Layer - Kannada Content Sanitization', () {
    test('Pratah Samidhadana ritual structure has all 10 pages intact', () {
      final file = File('assets/i18n/kn/rituals/pratah_samidhadana.json');
      final ritual = Ritual.fromJson(jsonDecode(file.readAsStringSync()));
      
      expect(ritual.id, 'pratah_samidhadana');
      expect(ritual.title, 'ಪ್ರಾತಸ್ಸಮಿಧಾದಾನ');
      expect(ritual.pages.length, 10, reason: 'Pratah Samidhadana must have exactly 10 pages');
      
      // Page 1 should start with Aasana Soochane
      expect(ritual.pages[0].componentIds.first, 'samidha_dana_aasana_soochane');
      
      // Final page should be Aparadha Kshamapana
      expect(ritual.pages[9].componentIds.first, 'aparadha_kshamapana');
    });
  });
}
