import json
import os
import glob

components_dir = 'assets/i18n/kn/components/'
tests_dir = 'test/data/content/kn/components/'

os.makedirs(tests_dir, exist_ok=True)

component_files = [os.path.basename(f) for f in glob.glob(os.path.join(components_dir, '*.json'))]
ritual_files = [os.path.basename(f) for f in glob.glob(os.path.join('assets/i18n/kn/rituals/', '*.json'))]

for filename in component_files:
    filepath = os.path.join(components_dir, filename)
    with open(filepath, 'r', encoding='utf-8') as f:
        data = json.load(f)
        
    id_name = data['id']
    blocks = data.get('blocks', [])
    
    test_filepath = os.path.join(tests_dir, f'{id_name}_test.dart')
    
    with open(test_filepath, 'w', encoding='utf-8') as f:
        f.write("import 'dart:convert';\n")
        f.write("import 'dart:io';\n")
        f.write("import 'package:flutter_test/flutter_test.dart';\n")
        f.write("import 'package:flutter_rig_sandhya/core/models/component.dart';\n")
        f.write("\n")
        f.write("void main() {\n")
        f.write("  group('Data Layer - Kannada Content Sanitization', () {\n")
        f.write(f"    test('{id_name} content has not been accidentally modified', () {{\n")
        f.write(f"      final file = File('assets/i18n/kn/components/{filename}');\n")
        f.write("      final component = Component.fromJson(jsonDecode(file.readAsStringSync()));\n")
        f.write(f"      expect(component.blocks.length, {len(blocks)});\n")
        
        for i, block in enumerate(blocks):
            safe_text = block['text'].replace("'", "\\'").replace("\n", "\\n")
            f.write(f"      expect(component.blocks[{i}].type, '{block['type']}');\n")
            f.write(f"      expect(component.blocks[{i}].text, '{safe_text}');\n")
            
        f.write("    });\n")
        f.write("  });\n")
        f.write("}\n")

print("Generated component tests.")

rituals_dir = 'assets/i18n/kn/rituals/'
ritual_tests_dir = 'test/data/content/kn/rituals/'
os.makedirs(ritual_tests_dir, exist_ok=True)

for filename in ritual_files:
    filepath = os.path.join(rituals_dir, filename)
    with open(filepath, 'r', encoding='utf-8') as f:
        data = json.load(f)
        
    id_name = data['id']
    pages = data.get('pages', [])
    
    test_filepath = os.path.join(ritual_tests_dir, f'{id_name}_test.dart')
    
    with open(test_filepath, 'w', encoding='utf-8') as f:
        f.write("import 'dart:convert';\n")
        f.write("import 'dart:io';\n")
        f.write("import 'package:flutter_test/flutter_test.dart';\n")
        f.write("import 'package:flutter_rig_sandhya/core/models/ritual.dart';\n")
        f.write("\n")
        f.write("void main() {\n")
        f.write("  group('Data Layer - Kannada Ritual Sanitization', () {\n")
        f.write(f"    test('{id_name} ritual has not been accidentally modified', () {{\n")
        f.write(f"      final file = File('assets/i18n/kn/rituals/{filename}');\n")
        f.write("      final ritual = Ritual.fromJson(jsonDecode(file.readAsStringSync()));\n")
        f.write(f"      expect(ritual.pages.length, {len(pages)});\n")
        
        for i, page in enumerate(pages):
            f.write(f"      expect(ritual.pages[{i}].componentIds.length, {len(page['components'])});\n")
            for j, comp in enumerate(page['components']):
                f.write(f"      expect(ritual.pages[{i}].componentIds[{j}], '{comp}');\n")
            
        f.write("    });\n")
        f.write("  });\n")
        f.write("}\n")
