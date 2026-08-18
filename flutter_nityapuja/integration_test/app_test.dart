import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter_nityapuja/main.dart' as app;

import 'package:google_fonts/google_fonts.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  GoogleFonts.config.allowRuntimeFetching = false;

  group('Nitya Pooja Integration Tests', () {
    testWidgets('App loads, displays title and can swipe through 30 pages',
        (tester) async {
      app.main();
      
      // Wait for app to render and load JSON
      await tester.pumpAndSettle(const Duration(seconds: 2));
      
      // Verify AppBar title
      expect(find.text('Nitya Pooja'), findsOneWidget);
      
      // Verify settings icon is present
      expect(find.byIcon(Icons.settings), findsOneWidget);
      
      // Verify InteractiveViewer and PageView are present
      expect(find.byType(InteractiveViewer), findsOneWidget);
      expect(find.byType(PageView), findsOneWidget);
      
      // Get the initial page count from the LinearProgressIndicator (which displays Text "1 / 30")
      final progressTextFinder = find.textContaining(' / 30');
      expect(progressTextFinder, findsOneWidget);
      
      // Swipe a few times to make sure it works
      for (int i = 0; i < 3; i++) {
        await tester.fling(find.byType(PageView), const Offset(-400, 0), 800);
        await tester.pumpAndSettle();
      }
      
      // Try opening settings modal
      await tester.tap(find.byIcon(Icons.settings));
      await tester.pumpAndSettle();
      
      expect(find.text('Settings'), findsOneWidget);
      expect(find.text('Language'), findsOneWidget);
      
      // Close settings modal
      await tester.tapAt(const Offset(10, 10)); // Tap outside modal
      await tester.pumpAndSettle();
    });
  });
}
