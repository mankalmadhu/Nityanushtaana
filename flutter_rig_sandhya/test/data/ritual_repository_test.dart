import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_rig_sandhya/data/ritual_repository.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('RitualRepository', () {
    late RitualRepository repository;

    setUp(() {
      repository = RitualRepository();
    });

    test('successfully loads the app index', () async {
      final index = await repository.loadIndex('kn');

      expect(index.language, 'kn');
      expect(index.items.length, 7);
      expect(index.items[0].id, 'pratah_sandhya');
      expect(index.items[0].title, 'ಪ್ರಾತಸ್ಸ೦ಧ್ಯಾ');
    });

    test('successfully loads a ritual composition file', () async {
      final ritual = await repository.loadRitual('pratah_sandhya', 'kn');

      expect(ritual.id, 'pratah_sandhya');
      expect(ritual.title, 'ಪ್ರಾತಸ್ಸ೦ಧ್ಯಾ');
      expect(ritual.pages.length, 14);

      // Page 1 should have 2 components: aasana_soochane and aachamaneya
      expect(ritual.pages[0].pageNumber, 1);
      expect(ritual.pages[0].componentIds.length, 2);
      expect(ritual.pages[0].componentIds[0], 'aasana_soochane');

      // Page 2 should have 2 components: prokshana, aachamaneya
      expect(ritual.pages[1].pageNumber, 2);
      expect(ritual.pages[1].componentIds.length, 2);
      expect(ritual.pages[1].componentIds[0], 'prokshana');
    });

    test('successfully resolves referenced components from a ritual', () async {
      final ritual = await repository.loadRitual('pratah_sandhya', 'kn');
      final firstComponentId = ritual.pages[0].componentIds[0];

      final component = await repository.loadComponent(firstComponentId, 'kn');

      expect(component.id, 'aasana_soochane');
      expect(component.blocks.first.text, 'ಪೂರ್ವ/ಉತ್ತರ ಅಭಿಮುಖವಾಗಿ ಕುಳಿತು');
    });
  });
}
