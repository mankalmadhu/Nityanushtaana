import 'package:flutter/material.dart';
import 'ui/screens/home_screen.dart';
import 'core/theme.dart';

import 'package:provider/provider.dart';
import 'core/app_settings.dart';

void main() {
  runApp(const NityanushtaanaApp());
}

class NityanushtaanaApp extends StatelessWidget {
  const NityanushtaanaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppSettings(),
      child: Consumer<AppSettings>(
        builder: (context, settings, child) {
          return MaterialApp(
            title: 'Nityanushtaana',
            theme: ThemeData(
              brightness: Brightness.light,
              scaffoldBackgroundColor: const Color(0xFFF5F5F5),
              colorScheme: ColorScheme.fromSeed(
                seedColor: Colors.deepOrange,
                brightness: Brightness.light,
              ),
              useMaterial3: true,
              extensions: const <ThemeExtension<dynamic>>[
                RitualThemeColors(
                  headingColor: Color(0xFF007B83), // Deep Cyan
                  verseColor: Color(0xFF1C4E9C), // Dark Blue
                  instructionColor: Color(0xFF333333), // Dark Gray
                  appBarColor: Color(0xFFE0E0E0),
                  pageIndicatorActiveColor: Color(0xFF007B83),
                  pageIndicatorInactiveColor: Color(0xFFBDBDBD),
                  dividerColor: Color(0xFFD6D6D6),
                ),
              ],
            ),
            darkTheme: ThemeData(
              brightness: Brightness.dark,
              scaffoldBackgroundColor: const Color(0xFF333333),
              colorScheme: ColorScheme.fromSeed(
                seedColor: Colors.deepOrange,
                brightness: Brightness.dark,
              ),
              useMaterial3: true,
              extensions: const <ThemeExtension<dynamic>>[
                RitualThemeColors(
                  headingColor: Color(0xFF3BDDE5),
                  verseColor: Color(0xFF6695E2),
                  instructionColor: Color(0xFFFFFFFF),
                  appBarColor: Color(0xFF595959),
                  pageIndicatorActiveColor: Color(0xFF3BDDE5),
                  pageIndicatorInactiveColor: Color(0xFF595959),
                  dividerColor: Color(0xFF8E8E8E),
                ),
              ],
            ),
            themeMode: ThemeMode.system,
            home: const HomeScreen(),
          );
        },
      ),
    );
  }
}
