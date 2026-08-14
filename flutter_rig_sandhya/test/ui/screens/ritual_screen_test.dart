import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_rig_sandhya/data/ritual_repository.dart';
import 'package:flutter_rig_sandhya/ui/screens/ritual_screen.dart';

void main() {
  testWidgets('RitualScreen loads and displays the ritual pages', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: RitualScreen(
          ritualId: 'pratah_sandhya',
          title: 'Dummy Ritual Title',
          languageCode: 'kn',
        ),
      ),
    );

    // Initially loading the ritual
    expect(find.byType(CircularProgressIndicator), findsOneWidget);
    await tester.pumpAndSettle();

    // Dynamically fetch the expected text for page 1 (aasana soochane)
    final repo = RitualRepository();
    final aasanaComponent = await repo.loadComponent('aasana_soochane', 'kn');
    final expectedAasanaText = aasanaComponent.blocks.first.text;

    // Loading should be gone, AppBar should be there (we can skip testing the exact title to keep it agnostic)
    expect(find.byType(CircularProgressIndicator), findsNothing);

    // Should find the PageView and SingleChildScrollView
    expect(find.byType(PageView), findsOneWidget);
    expect(find.byType(SingleChildScrollView), findsWidgets);

    // Page 1 should contain Aasana Soochane text dynamically loaded (now wrapped in parenthesis by UI)
    expect(find.text('($expectedAasanaText)'), findsOneWidget);

    // Swipe to Page 2
    await tester.drag(find.byType(PageView), const Offset(-500.0, 0.0));
    await tester.pumpAndSettle();

    // Page 2 should contain prokshana dummy text
    final prokshanaComponent = await repo.loadComponent('prokshana', 'kn');
    final expectedProkshanaText = prokshanaComponent.blocks.first.text;
    expect(find.text(expectedProkshanaText), findsOneWidget);
  });
}
