import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter_rig_sandhya/main.dart';
import 'package:flutter_rig_sandhya/data/ritual_repository.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('End-to-End: Navigate from Home to Ritual and swipe pages', (WidgetTester tester) async {
    // Launch the app
    await tester.pumpWidget(const NityanushtaanaApp());

    // Wait for the Home Screen to fetch the index.json
    await tester.pumpAndSettle();

    // Dynamically fetch the expected first item title from the repository
    final repo = RitualRepository();
    final indexData = await repo.loadIndex('kn');
    final firstItemTitle = indexData.items.first.title;

    // Verify we are on the Home Screen and the list is loaded
    final appTitle = indexData.title;
    expect(find.text(appTitle), findsOneWidget); // AppBar
    expect(find.text(firstItemTitle), findsWidgets);

    // Test Theme Switching (Simulate Light Mode explicitly)
    tester.binding.platformDispatcher.platformBrightnessTestValue = Brightness.light;
    await tester.pumpAndSettle();

    // Test Theme Switching (Simulate Dark Mode explicitly)
    tester.binding.platformDispatcher.platformBrightnessTestValue = Brightness.dark;
    await tester.pumpAndSettle();
    
    // Tap on the first item (e.g. Pratah Sandhya)
    await tester.tap(find.text(firstItemTitle).first);
    await tester.pumpAndSettle();

    // Now we should be on the Ritual Screen.
    // Dynamically fetch the expected text for page 1 (aasana soochane)
    final aasanaComponent = await repo.loadComponent('aasana_soochane', 'kn');
    final expectedAasanaText = aasanaComponent.blocks.first.text;

    // Verify Page 1 is loaded
    expect(find.text(expectedAasanaText), findsOneWidget);
    
    // Swipe to Page 2
    await tester.drag(find.byType(PageView), const Offset(-500.0, 0.0));
    await tester.pumpAndSettle();
    
    // Dynamically fetch expected text for page 2 (prokshana dummy text)
    final prokshanaComponent = await repo.loadComponent('prokshana', 'kn');
    final expectedProkshanaText = prokshanaComponent.blocks.first.text;
    
    // Verify Page 2 is loaded
    expect(find.text(expectedProkshanaText), findsOneWidget);
  });
}
