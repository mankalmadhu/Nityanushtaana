import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:flutter_nityapuja/core/app_settings.dart';
import 'package:flutter_nityapuja/core/theme.dart';
import 'package:flutter_nityapuja/ui/screens/nityapuja_screen.dart';

Widget buildTestApp() {
  return ChangeNotifierProvider(
    create: (_) => AppSettings(),
    child: MaterialApp(
      theme: ThemeData(
        extensions: const [
          RitualThemeColors(
            headingColor: Colors.teal,
            verseColor: Colors.white,
            instructionColor: Colors.grey,
            vedicInstructionColor: Colors.amber,
            appBarColor: Colors.white,
            pageIndicatorActiveColor: Colors.teal,
            pageIndicatorInactiveColor: Colors.grey,
            dividerColor: Colors.grey,
          ),
        ],
      ),
      home: const NityaPoojaScreen(),
    ),
  );
}

void main() {
  group('NityaPoojaScreen UI Tests', () {
    testWidgets('Shows loading indicator on initial load', (tester) async {
      await tester.pumpWidget(buildTestApp());
      // Before async JSON loading completes, a loading indicator should show
      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets('Shows AppBar with correct structure', (tester) async {
      await tester.pumpWidget(buildTestApp());
      // AppBar is present even before content loads
      expect(find.byType(AppBar), findsOneWidget);
    });

    testWidgets('Shows menu (hamburger) icon in AppBar', (tester) async {
      await tester.pumpWidget(buildTestApp());
      expect(find.byIcon(Icons.menu), findsOneWidget);
    });

    testWidgets('Drawer opens when menu icon is tapped', (tester) async {
      await tester.pumpWidget(buildTestApp());
      await tester.tap(find.byIcon(Icons.menu));
      // Use fixed pump durations instead of pumpAndSettle to avoid
      // timing out on the unresolvable rootBundle async JSON loading.
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 300));
      expect(find.byType(Drawer), findsOneWidget);
      expect(find.text('Settings'), findsOneWidget);
    });

    testWidgets('Drawer contains Font section', (tester) async {
      await tester.pumpWidget(buildTestApp());
      await tester.tap(find.byIcon(Icons.menu));
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 300));
      expect(find.text('Font'), findsOneWidget);
    });

    testWidgets('Drawer contains Language section', (tester) async {
      await tester.pumpWidget(buildTestApp());
      await tester.tap(find.byIcon(Icons.menu));
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 300));
      expect(find.text('Language'), findsOneWidget);
    });

    testWidgets('Language options include Kannada, Telugu, Sanskrit', (
      tester,
    ) async {
      await tester.pumpWidget(buildTestApp());
      await tester.tap(find.byIcon(Icons.menu));
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 300));

      // Expand Language tile
      await tester.tap(find.text('Language'));
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 300));

      expect(find.text('ಕನ್ನಡ (Kannada)'), findsOneWidget);
      expect(find.text('తెలుగు (Telugu)'), findsOneWidget);
      expect(find.text('संस्कृतम् (Sanskrit)'), findsOneWidget);
    });

    testWidgets('Telugu and Sanskrit show "Coming soon..." subtitle', (
      tester,
    ) async {
      await tester.pumpWidget(buildTestApp());
      await tester.tap(find.byIcon(Icons.menu));
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 300));
      await tester.tap(find.text('Language'));
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 300));

      expect(find.text('Coming soon...'), findsNWidgets(2));
    });

    testWidgets('Font options include Ganapati and Google Font', (
      tester,
    ) async {
      await tester.pumpWidget(buildTestApp());
      await tester.tap(find.byIcon(Icons.menu));
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 300));

      await tester.tap(find.text('Font'));
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 300));

      expect(find.text('Ganapati Font'), findsOneWidget);
      expect(find.text('Google Font (System)'), findsOneWidget);
    });
  });
}
