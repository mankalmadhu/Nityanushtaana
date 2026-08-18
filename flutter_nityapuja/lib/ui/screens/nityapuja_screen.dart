// ignore_for_file: deprecated_member_use

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/app_settings.dart';
import '../../core/models/component.dart';
import '../../core/theme.dart';
import '../widgets/ritual_block_widget.dart';

class NityaPoojaScreen extends StatefulWidget {
  const NityaPoojaScreen({super.key});

  @override
  State<NityaPoojaScreen> createState() => _NityaPoojaScreenState();
}

class _NityaPoojaScreenState extends State<NityaPoojaScreen> {
  final PageController _pageController = PageController();
  List<dynamic>? _pages;
  String? _title;
  bool _isLoading = true;
  String? _error;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    try {
      final settings = Provider.of<AppSettings>(context, listen: false);
      final lang = settings.currentLanguage;

      final structureString = await rootBundle.loadString(
        'assets/i18n/$lang/structure.json',
      );
      final structureMap = jsonDecode(structureString);
      final pageIds = (structureMap['pages'] as List<dynamic>).cast<String>();

      final List<dynamic> loadedPages = [];
      for (final pageId in pageIds) {
        final pageString = await rootBundle.loadString(
          'assets/i18n/$lang/components/$pageId.json',
        );
        loadedPages.add(jsonDecode(pageString));
      }

      setState(() {
        _title =
            "ನಿತ್ಯ ಪೂಜಾ"; // Hardcoded title since structure doesn't have it anymore
        _pages = loadedPages;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _error = e.toString();
        _isLoading = false;
      });
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Reload if language changes
    _loadData();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  TextStyle _getStyle(BuildContext context, double fontSize, Color? color) {
    final useGoogleFonts = context.watch<AppSettings>().useGoogleFonts;
    final String currentLang = context.watch<AppSettings>().currentLanguage;

    if (useGoogleFonts) {
      if (currentLang == 'te') {
        return GoogleFonts.tiroTelugu(fontSize: fontSize, color: color);
      } else if (currentLang == 'sa') {
        return GoogleFonts.tiroDevanagariSanskrit(
          fontSize: fontSize,
          color: color,
        );
      }
      return GoogleFonts.tiroKannada(fontSize: fontSize, color: color);
    }
    return TextStyle(fontFamily: 'Ganapati', fontSize: fontSize, color: color);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _title ?? 'Nitya Pooja',
          style: _getStyle(context, 22, null),
        ),
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
                        if (value != null && value != settings.useGoogleFonts) {
                          settings.toggleFont();
                        }
                      },
                    ),
                    RadioListTile<bool>(
                      title: const Text('Google Font (System)'),
                      value: true,
                      groupValue: settings.useGoogleFonts,
                      onChanged: (value) {
                        if (value != null && value != settings.useGoogleFonts) {
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
                          Navigator.pop(
                            context,
                          ); // Close drawer on language change to reload
                        }
                      },
                    ),
                    RadioListTile<String>(
                      title: const Text('తెలుగు (Telugu)'),
                      subtitle: const Text('Coming soon...'),
                      value: 'te',
                      groupValue: settings.currentLanguage,
                      onChanged: null, // Disabled
                    ),
                    RadioListTile<String>(
                      title: const Text('संस्कृतम् (Sanskrit)'),
                      subtitle: const Text('Coming soon...'),
                      value: 'sa',
                      groupValue: settings.currentLanguage,
                      onChanged: null, // Disabled
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : _error != null
          ? Center(child: Text('Error: $_error'))
          : _pages == null || _pages!.isEmpty
          ? const Center(child: Text('No pages found.'))
          : Column(
              children: [
                Expanded(
                  child: InteractiveViewer(
                    minScale: 1.0,
                    maxScale: 3.0,
                    child: PageView.builder(
                      controller: _pageController,
                      itemCount: _pages!.length,
                      onPageChanged: (index) {
                        setState(() {
                          _currentPage = index;
                        });
                      },
                      itemBuilder: (context, index) {
                        final pageData = _pages![index];
                        final blocks = pageData['blocks'] as List<dynamic>;

                        return SingleChildScrollView(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: blocks.map((block) {
                              return RitualBlockWidget(
                                block: Block(
                                  type: block['type'],
                                  text: block['text'],
                                ),
                              );
                            }).toList(),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      LinearProgressIndicator(
                        value: _pages!.isEmpty
                            ? 0
                            : (_currentPage + 1) / _pages!.length,
                        backgroundColor: Theme.of(context)
                            .extension<RitualThemeColors>()
                            ?.pageIndicatorInactiveColor,
                        valueColor: AlwaysStoppedAnimation<Color>(
                          Theme.of(context)
                                  .extension<RitualThemeColors>()
                                  ?.pageIndicatorActiveColor ??
                              Colors.deepOrange,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        '${_currentPage + 1} / ${_pages!.length}',
                        style: TextStyle(
                          color: Theme.of(
                            context,
                          ).extension<RitualThemeColors>()?.instructionColor,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
