// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../core/models/index.dart';
import '../../data/ritual_repository.dart';
import 'ritual_screen.dart';
import '../../core/theme.dart';
import '../../core/app_settings.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final RitualRepository _repository = RitualRepository();
  Future<AppIndex>? _indexFuture;
  String? _lastLanguage;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final currentLang = Provider.of<AppSettings>(
      context,
      listen: true,
    ).currentLanguage;
    if (_lastLanguage != currentLang) {
      _lastLanguage = currentLang;
      _indexFuture = _repository.loadIndex(currentLang);
    }
  }

  TextStyle _getStyle(BuildContext context, double fontSize, Color? color) {
    final useGoogleFonts = context.watch<AppSettings>().useGoogleFonts;
    if (useGoogleFonts) {
      return GoogleFonts.notoSerifKannada(fontSize: fontSize, color: color);
    }
    return TextStyle(fontFamily: 'Ganapati', fontSize: fontSize, color: color);
  }

  @override
  Widget build(BuildContext context) {
    final themeColors = Theme.of(context).extension<RitualThemeColors>();

    return FutureBuilder<AppIndex>(
      future: _indexFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Scaffold(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            body: const Center(child: CircularProgressIndicator()),
          );
        }
        if (snapshot.hasError) {
          return Scaffold(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            body: Center(child: Text('Error: ${snapshot.error}')),
          );
        }

        final appIndex = snapshot.data!;
        final items = appIndex.items;

        return Scaffold(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          appBar: AppBar(
            title: Text(appIndex.title, style: _getStyle(context, 22, null)),
            backgroundColor: themeColors?.appBarColor,
            foregroundColor: Theme.of(context).brightness == Brightness.dark
                ? Colors.white
                : Colors.black,
          ),
          drawer: Drawer(
            child: Consumer<AppSettings>(
              builder: (context, settings, child) {
                return ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    DrawerHeader(
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                      ),
                      child: const Text(
                        'Settings',
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                    ),
                    ExpansionTile(
                      leading: const Icon(Icons.font_download),
                      title: const Text('Font'),
                      children: [
                        RadioListTile<bool>(
                          title: const Text('Ganapati Font'),
                          value: false,
                          groupValue: settings.useGoogleFonts,
                          onChanged: (value) {
                            if (value != null &&
                                value != settings.useGoogleFonts) {
                              settings.toggleFont();
                            }
                          },
                        ),
                        RadioListTile<bool>(
                          title: const Text('Google Font (System)'),
                          value: true,
                          groupValue: settings.useGoogleFonts,
                          onChanged: (value) {
                            if (value != null &&
                                value != settings.useGoogleFonts) {
                              settings.toggleFont();
                            }
                          },
                        ),
                      ],
                    ),
                    ExpansionTile(
                      leading: const Icon(Icons.language),
                      title: const Text('Language'),
                      children: [
                        RadioListTile<String>(
                          title: const Text('ಕನ್ನಡ (Kannada)'),
                          value: 'kn',
                          groupValue: settings.currentLanguage,
                          onChanged: (value) {
                            if (value != null) {
                              settings.changeLanguage(value);
                              Navigator.pop(context); // Close drawer
                            }
                          },
                        ),
                        RadioListTile<String>(
                          title: const Text('తెలుగు (Telugu)'),
                          subtitle: const Text('Coming soon...'),
                          value: 'te',
                          groupValue: settings.currentLanguage,
                          onChanged: null,
                        ),
                        RadioListTile<String>(
                          title: const Text('संस्कृतम् (Sanskrit)'),
                          subtitle: const Text('Coming soon...'),
                          value: 'sa',
                          groupValue: settings.currentLanguage,
                          onChanged: null,
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
          ),
          body: ListView.separated(
            itemCount: items.length,
            separatorBuilder: (context, index) =>
                Divider(color: themeColors?.dividerColor, height: 1),
            itemBuilder: (context, index) {
              final item = items[index];
              return ListTile(
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 8.0,
                ),
                leading: Image.asset(
                  'assets/images/${item.image}',
                  width: 40,
                  height: 40,
                  errorBuilder: (context, error, stackTrace) =>
                      Icon(Icons.menu_book, color: themeColors?.headingColor),
                ),
                title: Text(
                  item.title,
                  style: _getStyle(context, 20, themeColors?.instructionColor),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                  color: themeColors?.instructionColor,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RitualScreen(
                        ritualId: item.id,
                        title: item.title,
                        languageCode: _lastLanguage ?? 'kn',
                      ),
                    ),
                  );
                },
              );
            },
          ),
        );
      },
    );
  }
}
