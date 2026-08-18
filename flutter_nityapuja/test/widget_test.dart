import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:flutter_nityapuja/core/app_settings.dart';
import 'package:flutter_nityapuja/core/models/component.dart';
import 'package:flutter_nityapuja/core/theme.dart';
import 'package:flutter_nityapuja/ui/widgets/ritual_block_widget.dart';

void main() {
  Widget createWidgetUnderTest(Widget child) {
    return ChangeNotifierProvider(
      create: (_) => AppSettings(),
      child: MaterialApp(
        theme: ThemeData(
          extensions: const [
            RitualThemeColors(
              headingColor: Colors.cyan,
              verseColor: Colors.blue,
              instructionColor: Colors.grey,
              vedicInstructionColor: Colors.red,
              appBarColor: Colors.white,
              pageIndicatorActiveColor: Colors.cyan,
              pageIndicatorInactiveColor: Colors.grey,
              dividerColor: Colors.grey,
            ),
          ],
        ),
        home: Scaffold(body: child),
      ),
    );
  }

  group('RitualBlockWidget Tests', () {
    testWidgets('renders heading block correctly', (tester) async {
      await tester.pumpWidget(
        createWidgetUnderTest(
          RitualBlockWidget(
            block: Block(type: 'heading', text: 'Test Heading'),
          ),
        ),
      );
      expect(find.text('Test Heading'), findsOneWidget);
    });

    testWidgets('renders instruction block correctly', (tester) async {
      await tester.pumpWidget(
        createWidgetUnderTest(
          RitualBlockWidget(
            block: Block(type: 'instruction', text: '(Test Instruction)'),
          ),
        ),
      );
      expect(find.text('(Test Instruction)'), findsOneWidget);
    });

    testWidgets('renders verse_viniyoga block correctly', (tester) async {
      await tester.pumpWidget(
        createWidgetUnderTest(
          RitualBlockWidget(
            block: Block(type: 'verse_viniyoga', text: 'Test Viniyoga'),
          ),
        ),
      );
      expect(find.text('Test Viniyoga'), findsOneWidget);
    });

    testWidgets('renders vedic_instruction block correctly', (tester) async {
      await tester.pumpWidget(
        createWidgetUnderTest(
          RitualBlockWidget(
            block: Block(type: 'vedic_instruction', text: 'Test Vedic'),
          ),
        ),
      );
      expect(find.text('Test Vedic'), findsOneWidget);
    });

    testWidgets('renders verse_sankalpa block correctly', (tester) async {
      await tester.pumpWidget(
        createWidgetUnderTest(
          RitualBlockWidget(
            block: Block(type: 'verse_sankalpa', text: 'Test Sankalpa'),
          ),
        ),
      );
      expect(find.text('Test Sankalpa'), findsOneWidget);
    });
  });
}
