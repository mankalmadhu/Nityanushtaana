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
      return GoogleFonts.notoSansKannada(fontSize: fontSize, color: color);
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
        final appSettings = context.watch<AppSettings>();

        return Scaffold(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          appBar: AppBar(
            title: Text(
              appIndex.title,
              style: _getStyle(context, 22, null),
            ),
            backgroundColor: themeColors?.appBarColor,
            foregroundColor: Theme.of(context).brightness == Brightness.dark
                ? Colors.white
                : Colors.black,
            actions: [
              IconButton(
                icon: Icon(appSettings.useGoogleFonts ? Icons.font_download : Icons.font_download_outlined),
                tooltip: 'Toggle Font',
                onPressed: () {
                  appSettings.toggleFont();
                },
              ),
              PopupMenuButton<String>(
                icon: const Icon(Icons.language),
                onSelected: (String langCode) {
                  Provider.of<AppSettings>(
                    context,
                    listen: false,
                  ).changeLanguage(langCode);
                },
                itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                  const PopupMenuItem<String>(
                    value: 'kn',
                    child: Text('ಕನ್ನಡ (Kannada)'),
                  ),
                  const PopupMenuItem<String>(
                    value: 'sa',
                    enabled: false,
                    child: Text('संस्कृतम् (Sanskrit) - Coming Soon'),
                  ),
                  const PopupMenuItem<String>(
                    value: 'te',
                    enabled: false,
                    child: Text('తెలుగు (Telugu) - Coming Soon'),
                  ),
                ],
              ),
            ],
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
