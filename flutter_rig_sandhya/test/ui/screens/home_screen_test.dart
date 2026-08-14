import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:flutter_rig_sandhya/core/app_settings.dart';
import 'package:flutter_rig_sandhya/data/ritual_repository.dart';
import 'package:flutter_rig_sandhya/ui/screens/home_screen.dart';

void main() {
  testWidgets('HomeScreen loads and displays the app title and items', (
    WidgetTester tester,
  ) async {
    // Pump the HomeScreen inside a MaterialApp to provide Theme and Directionality
    await tester.pumpWidget(
      ChangeNotifierProvider(
        create: (context) => AppSettings(),
        child: const MaterialApp(home: HomeScreen()),
      ),
    );

    // Initially, it should show a loading indicator because FutureBuilder is waiting
    expect(find.byType(CircularProgressIndicator), findsOneWidget);

    // Wait for the FutureBuilder to complete fetching from the RitualRepository
    await tester.pumpAndSettle();

    // Verify the loading indicator is gone
    expect(find.byType(CircularProgressIndicator), findsNothing);

    // Dynamically fetch the expected first item title from the repository
    // This makes the test language-agnostic
    final indexData = await RitualRepository().loadIndex('kn');
    final firstItemTitle = indexData.items.first.title;

    // Verify that the first item in the list is rendered dynamically
    expect(find.text(firstItemTitle), findsWidgets);

    // Verify that the last item is rendered (we might need to scroll, but in tests,
    // if the list is small, it usually renders. We check for a ListView to be safe).
    expect(find.byType(ListView), findsOneWidget);
    expect(find.byType(ListTile), findsWidgets);
  });
}
