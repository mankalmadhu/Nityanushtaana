import 'dart:convert';
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_rig_sandhya/core/models/component.dart';

void main() {
  group('Data Layer - Kannada Content Sanitization', () {
    test('madhyahnika_gayatri_japa content has not been accidentally modified', () {
      final file = File(
        'assets/i18n/kn/components/madhyahnika_gayatri_japa.json',
      );
      final component = Component.fromJson(jsonDecode(file.readAsStringSync()));
      expect(component.blocks.length, 28);
      expect(component.blocks[0].type, 'heading');
      expect(component.blocks[0].text, 'ಗಾಯತ್ರೀ ಜಪ');
      expect(component.blocks[1].type, 'verse_viniyoga');
      expect(
        component.blocks[1].text,
        'ಆಗಚ್ಛ ವರದೇ ದೇವೀ ಜಪ್ಯೇಮೇ ಸನ್ನಿಧೌ ಭವ । ಗಾಯ೦ತ೦ ತ್ರಾಯಸೇ ಯಸ್ಮಾತ್ ಗಾಯತ್ರೀ೦ ತ್ವಮತಸ್ಮೃತ ।\nಗಾಯತ್ರಿಯಾ ಗಾಥಿನೋ ವಿಶ್ವಾಮಿತ್ರ ಋಷಿಃ, ಸವಿತಾ ದೇವತಾ, ಗಾಯತ್ರೀ ಛ೦ದಃ।\nಅರ್ಗ್ನಿಮುಖ೦, ಬ್ರಹ್ಮಾ ಶಿರಃ, ವಿಷ್ಣುರ್ಹೃದಯ೦, ರುದ್ರಃಶಿಖಾ, ಪೃಥ್ವೀಯೋನಿ, ಪ್ರಾಣಾಪಾನ, ವ್ಯಾನೋದಾನ,\nಸ ಮಾನಾ ಸ ಪ್ರಾಣಾ, ಶ್ವೇತ ವರ್ಣಾ, ಸಾ೦ಖ್ಯಾಯನಸ ಗೋತ್ರಾ, ಗಾಯತ್ರೀ ಚತುರ್ವಿ೦ಶತ್ಯಕ್ಷರಾ ,\nತ್ರಿಪದಾ ಷಟ್ಕುಕ್ಷಿಃ, ಪ೦ಚಶೀರ್ಷೋಪನಯನೇ ವಿನಿಯೋಗಃ ।',
      );
      expect(component.blocks[2].type, 'heading');
      expect(component.blocks[2].text, 'ಗಾಯತ್ರೀ ಜಪ ಸ೦ಕಲ್ಪ');
      expect(component.blocks[3].type, 'verse_sankalpa');
      expect(
        component.blocks[3].text,
        'ಪ್ರಣವಸ್ಯ ಪರಬ್ರಹ್ಮ ಋಷಿಃ ಪರಮಾತ್ಮಾ ದೇವತಾ ದೈವೀ ಗಾಯತ್ರೀ ಛ೦ದಃ ಪ್ರಾಣಾಯಾಮೇ ವಿನಿಯೋಗಃ ।',
      );
      expect(component.blocks[4].type, 'verse_viniyoga');
      expect(
        component.blocks[4].text,
        'ಓ೦ ಭೂಃ ಓ೦ ಭುವಃ ಓ೦ ಸುವಃ ಓ೦ ಮಹಃ ಓ೦ ಜನಃ ಓ೦ ತಪಃ ಓ೦ ಸತ್ಯಮ್ ॥',
      );
      expect(component.blocks[5].type, 'verse_viniyoga');
      expect(
        component.blocks[5].text,
        'ಓ೦ ತತ್ಸ॑ವಿ॒ತುರ್ವರೇ᳚ಣ್ಯ॒೦ ಭರ್ಗೋ᳚ ದೇ॒ವಸ್ಯ॑ ಧೀಮಹಿ । ಧಿಯೋ॒ ಯೋ ನಃ॑ ಪ್ರಚೋ॒ದಯಾ᳚ತ್ ॥',
      );
      expect(component.blocks[6].type, 'verse_viniyoga');
      expect(
        component.blocks[6].text,
        'ಓ॒ಮಾಪೋ॒ ಜ್ಯೋತೀ॒ರಸೋ॒ಽಮೃತ॒೦ ಬ್ರಹ್ಮ॒ ಭೂರ್ಭುವ॒ಸ್ಸ್ವರೋ೦॥',
      );
      expect(component.blocks[7].type, 'verse_sankalpa');
      expect(
        component.blocks[7].text,
        'ಮಮ ಉಪಾತ್ತ ಸಮಸ್ತ ದುರಿತಕ್ಷಯದ್ವಾರಾ ಶ್ರೀ ಪರಮೇಶ್ವರ ಪ್ರೀತ್ಯರ್ಥ೦ ಮಾಧ್ಯಾಹ್ನಿಕ ಸ೦ಧ್ಯಾ೦ಗ ಯಥಾ ಶಕ್ತಿ ಗಾಯತ್ರೀ ಮಹಾಮ೦ತ್ರ ಜಪ೦ ಕರಿಷ್ಯೇ ॥',
      );
      expect(component.blocks[8].type, 'heading');
      expect(component.blocks[8].text, 'ಕರನ್ಯಾಸ');
      expect(component.blocks[9].type, 'verse_viniyoga');
      expect(
        component.blocks[9].text,
        'ತತ್ಸವಿತುಃ ಅ೦ಗುಷ್ಠಾಭ್ಯಾ೦ ನಮಃ । ವರೇಣ್ಯ೦ ತರ್ಜನೀಭ್ಯಾ೦ ನಮಃ ।\nಭರ್ಗೋದೇವಸ್ಯ ಮಧ್ಯಮಾಭ್ಯಾ೦ ನಮಃ ।ಧೀಮಹಿ ಅನಾಮಿಕಾಭ್ಯಾ೦ ನಮಃ ।\nಧಿಯೋಽಯೋನಃ ಕನಿಷ್ಠಿಕಾಭ್ಯಾ೦ ನಮಃ ।ಪ್ರಚೋದಯಾತ್ ಕರತಲ ಕರಪೃಷ್ಠಾಭ್ಯಾ೦ ನಮಃ ।',
      );
      expect(component.blocks[10].type, 'heading');
      expect(component.blocks[10].text, 'ಅ೦ಗನ್ಯಾಸ');
      expect(component.blocks[11].type, 'verse_viniyoga');
      expect(
        component.blocks[11].text,
        'ತತ್ಸವಿತುಃ ಹೃದಯಾಯ ನಮಃ । ವರೇಣ್ಯ೦ ಶಿರಸೇ ಸ್ವಾಹಾ ।\nಭರ್ಗೋದೇವಸ್ಯ ಶಿಖಾಯೈ ವಷಟ್ ।ಧೀಮಹಿ ಕವಚಾಯಹು೦ ।\nಧಿಯೋಽಯೋನಃ ನೇತ್ರತ್ರಯಾಯ ವೌಷಟ್ ।ಪ್ರಚೋದಯಾತ್ ಅಸ್ತ್ರಾಯಫಟ್ ।',
      );
      expect(component.blocks[12].type, 'verse_viniyoga');
      expect(
        component.blocks[12].text,
        'ಭೂರ್ಭುವಸ್ಸ್ವರೋಮಿತಿ ದಿಗ್ಬ೦ಧಃ । ಧ್ಯಾನ೦ ।।',
      );
      expect(component.blocks[13].type, 'heading');
      expect(component.blocks[13].text, 'ಮಧ್ಯದಿನ ಸ್ವರೂಪ');
      expect(component.blocks[14].type, 'verse_viniyoga');
      expect(
        component.blocks[14].text,
        'ಅಥ ಮಧ್ಯ೦ದಿನೇ ತಾ೦ ಯುವತೀ೦ । ಯುವಾದಿತ್ಯ ಮ೦ಡಲ ಮಧ್ಯಸ್ಥಾ೦ । ಶ್ವೇತ ವರ್ಣಾ೦ ।\nಶ್ವೇತಾ೦ಬರಾನು ಲೇಪನ ಸ್ರಗಾಭರಣಾ೦ । ಪ೦ಚವಕ್ತ್ರಾ೦ । ಪ್ರತಿ ವಕ್ತ್ರ೦ ತ್ರಿನೇತ್ರಾ೦ ।\nಚ೦ದ್ರಶೇಖರಾ೦ ತ್ರಿಶೂಲ ಖಡ್ಗ ಖಟ್ವಾ೦ಗ ಡಮರುಗಾ೦ಕ ಚತುರ್ಭುಜಾ೦ ।\nವೃಷಭಾಸನಾರೂಢಾ೦ । ರುದ್ರ ದೈವತ್ಯಾ೦ । ಯಜುರ್ವೇದಮುದಾಹರ೦ತೀ೦ ।\nಭುವರ್ಲೋಕಾಧಿಷ್ಠಾತ್ರೀ೦ । ಸಾವಿತ್ರೀ೦ ನಾಮ ದೇವತಾ೦ ಧ್ಯಾಯೇತ್ ।',
      );
      expect(component.blocks[15].type, 'heading');
      expect(component.blocks[15].text, 'ಮ೦ತ್ರಾರ್ಥ');
      expect(component.blocks[16].type, 'verse_viniyoga');
      expect(
        component.blocks[16].text,
        'ಯೊ ದೇವಃ ಸವಿತಾಸ್ಮಾಕ೦ । ಧಿಯೋ ಧರ್ಮಾದಿ ಗೋಚರಃ । ಪ್ರೇರಯೇತ್ ತಸ್ಯ ಯದ್ಭರ್ಗಃ ।\nತದ್ವರೇಣ್ಯ೦ ಉಪಾಸ್ಮಹೇ । ಸವಿತುರ್ದೇವಸ್ಯ ವರೇಣ್ಯ೦ । ತೇಜೋ ಧ್ಯಾಯೇಮಹಿ ।\nಯೋಽಸ್ಮಾಕ೦ ಕರ್ಮಾಣಿ । ಪ್ರೇರಯೇತ್ ಇತಿ ಮ೦ತ್ರಾರ್ಥಃ ।',
      );
      expect(component.blocks[17].type, 'heading');
      expect(component.blocks[17].text, 'ಜಪ');
      expect(component.blocks[18].type, 'verse_viniyoga');
      expect(
        component.blocks[18].text,
        'ಓ೦ ತತ್ಸ॑ವಿ॒ತುರ್ವರೇ᳚ಣ್ಯ॒೦ ಭರ್ಗೋ᳚ ದೇ॒ವಸ್ಯ॑ ಧೀಮಹಿ । ಧಿಯೋ॒ ಯೋ ನಃ॑ ಪ್ರಚೋ॒ದಯಾ᳚ತ್ ॥',
      );
      expect(component.blocks[19].type, 'instruction');
      expect(component.blocks[19].text, '(ಯಥಾಶಕ್ತಿ)');
      expect(component.blocks[20].type, 'verse_viniyoga');
      expect(component.blocks[20].text, 'ತತ್ಸಬ್ರಹ್ಮಾರ್ಪಣಮಸ್ತು');
      expect(component.blocks[21].type, 'heading');
      expect(component.blocks[21].text, 'ಕರನ್ಯಾಸ');
      expect(component.blocks[22].type, 'verse_viniyoga');
      expect(
        component.blocks[22].text,
        'ತತ್ಸವಿತುಃ ಅ೦ಗುಷ್ಠಾಭ್ಯಾ೦ ನಮಃ । ವರೇಣ್ಯ೦ ತರ್ಜನೀಭ್ಯಾ೦ ನಮಃ ।\nಭರ್ಗೋದೇವಸ್ಯ ಮಧ್ಯಮಾಭ್ಯಾ೦ ನಮಃ ।ಧೀಮಹಿ ಅನಾಮಿಕಾಭ್ಯಾ೦ ನಮಃ ।\nಧಿಯೋಽಯೋನಃ ಕನಿಷ್ಠಿಕಾಭ್ಯಾ೦ ನಮಃ ।ಪ್ರಚೋದಯಾತ್ ಕರತಲ ಕರಪೃಷ್ಠಾಭ್ಯಾ೦ ನಮಃ ।',
      );
      expect(component.blocks[23].type, 'heading');
      expect(component.blocks[23].text, 'ಅ೦ಗನ್ಯಾಸ');
      expect(component.blocks[24].type, 'verse_viniyoga');
      expect(
        component.blocks[24].text,
        'ತತ್ಸವಿತುಃ ಹೃದಯಾಯ ನಮಃ । ವರೇಣ್ಯ೦ ಶಿರಸೇ ಸ್ವಾಹಾ ।\nಭರ್ಗೋದೇವಸ್ಯ ಶಿಖಾಯೈ ವಷಟ್ ।ಧೀಮಹಿ ಕವಚಾಯಹು೦ ।\nಧಿಯೋಽಯೋನಃ ನೇತ್ರತ್ರಯಾಯ ವೌಷಟ್ ।ಪ್ರಚೋದಯಾತ್ ಅಸ್ತ್ರಾಯಫಟ್ ।',
      );
      expect(component.blocks[25].type, 'verse_viniyoga');
      expect(
        component.blocks[25].text,
        'ಭೂರ್ಭುವಸ್ಸ್ವರೋಮಿತಿ ದಿಗ್ವಿಮೋಕಃ । ಧ್ಯಾನ೦ ।।',
      );
      expect(component.blocks[26].type, 'heading');
      expect(component.blocks[26].text, 'ಮುಕ್ತಾಯ');
      expect(component.blocks[27].type, 'verse_viniyoga');
      expect(
        component.blocks[27].text,
        'ಮುಕ್ತಾವಿದ್ರುಮ ಹೇಮ ನೀಲ ಧವಳಚ್ಛಾಯೈಃ ಮುಖೈಸ್ತ್ರೈಕ್ಷಣೈಃ ಯುಕ್ತಾಮಿ೦ದುನಿಬದ್ಧ ರತ್ನ ಮಕುಟಾ೦ ತತ್ವಾರ್ಥ ವರ್ಣಾತ್ಮಿಕಾ೦ ।\nಗಾಯತ್ರೀ೦ ವರದಾಭಯಾ೦ ಅ೦ಕುಶಕಶಾಃ ಶುಭ್ರ೦ ಕಪಾಲ೦ ಗದಾ೦ ಶ೦ಖ೦ ಚಕ್ರಮಥಾರವಿ೦ದ ಯುಗಳ೦ ಹಸ್ತೈರ್ವಹ೦ತೀ೦ ಭಜೇ ।',
      );
    });
  });
}
