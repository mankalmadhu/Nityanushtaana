import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:provider/provider.dart';

import '../../core/app_settings.dart';
import '../../core/models/component.dart';
import '../../core/theme.dart';
import '../widgets/ritual_block_widget.dart';

class NityaPoojaScreen extends StatefulWidget {
  const NityaPoojaScreen({Key? key}) : super(key: key);

  @override
  _NityaPoojaScreenState createState() => _NityaPoojaScreenState();
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
      
      final structureString = await rootBundle.loadString('assets/i18n/$lang/structure.json');
      final structureMap = jsonDecode(structureString);
      final pageIds = (structureMap['pages'] as List<dynamic>).cast<String>();
      
      final List<dynamic> loadedPages = [];
      for (final pageId in pageIds) {
        final pageString = await rootBundle.loadString('assets/i18n/$lang/components/$pageId.json');
        loadedPages.add(jsonDecode(pageString));
      }
      
      setState(() {
        _title = "ನಿತ್ಯ ಪೂಜಾ"; // Hardcoded title since structure doesn't have it anymore
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

  void _showSettingsModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Consumer<AppSettings>(
            builder: (context, settings, child) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Settings',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  SwitchListTile(
                    title: const Text('Use System Default Font'),
                    subtitle: const Text('Turn off to use Ganapati font for Kannada'),
                    value: settings.useGoogleFonts,
                    onChanged: (value) => settings.toggleFont(),
                  ),
                  const SizedBox(height: 16),
                  const Text('Language'),
                  DropdownButton<String>(
                    value: settings.currentLanguage,
                    isExpanded: true,
                    items: const [
                      DropdownMenuItem(
                        value: 'kn',
                        child: Text('ಕನ್ನಡ (Kannada)'),
                      ),
                      DropdownMenuItem(
                        value: 'en-US',
                        child: Text('English'),
                      ),
                    ],
                    onChanged: (value) {
                      if (value != null) {
                        settings.changeLanguage(value);
                        Navigator.pop(context); // Close modal on language change to trigger reload
                      }
                    },
                  ),
                  const SizedBox(height: 24),
                ],
              );
            },
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title ?? 'Nitya Pooja'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () => _showSettingsModal(context),
            tooltip: 'Settings',
          ),
        ],
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
                                value: _pages!.isEmpty ? 0 : (_currentPage + 1) / _pages!.length,
                                backgroundColor: Theme.of(context).extension<RitualThemeColors>()?.pageIndicatorInactiveColor,
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  Theme.of(context).extension<RitualThemeColors>()?.pageIndicatorActiveColor ?? Colors.deepOrange,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                '${_currentPage + 1} / ${_pages!.length}',
                                style: TextStyle(
                                  color: Theme.of(context).extension<RitualThemeColors>()?.instructionColor,
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
