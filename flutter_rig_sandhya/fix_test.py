import re

with open('integration_test/app_test.dart', 'r') as f:
    content = f.read()

def replace_tap(match):
    var_name = match.group(1)
    return f'''final itemFinder = find.text({var_name}).first;
    await tester.dragUntilVisible(
      itemFinder,
      find.byType(ListView),
      const Offset(0, -300),
    );
    await tester.tap(itemFinder);'''

content = re.sub(r'await tester\.tap\(find\.text\((.*?)\)\.first\);', replace_tap, content)

with open('integration_test/app_test.dart', 'w') as f:
    f.write(content)
