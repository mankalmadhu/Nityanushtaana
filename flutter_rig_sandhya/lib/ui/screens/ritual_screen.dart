import 'package:flutter/material.dart';
import '../../core/models/ritual.dart';
import '../../core/models/component.dart';
import '../../data/ritual_repository.dart';
import '../widgets/ritual_block_widget.dart';
import '../../core/theme.dart';

class RitualScreen extends StatefulWidget {
  final String ritualId;
  final String title;
  final String languageCode;

  const RitualScreen({
    super.key,
    required this.ritualId,
    required this.title,
    required this.languageCode,
  });

  @override
  State<RitualScreen> createState() => _RitualScreenState();
}

class _RitualScreenState extends State<RitualScreen> {
  final RitualRepository _repository = RitualRepository();
  final PageController _pageController = PageController();

  Future<Ritual>? _ritualFuture;

  // Cache for loaded components so we don't reload them on every swipe
  final Map<String, Component> _componentCache = {};

  @override
  void initState() {
    super.initState();
    _ritualFuture = _repository.loadRitual(
      widget.ritualId,
      widget.languageCode,
    );
  }

  Future<List<Component>> _loadComponentsForPage(RitualPage page) async {
    List<Component> components = [];
    for (String componentId in page.componentIds) {
      if (!_componentCache.containsKey(componentId)) {
        final comp = await _repository.loadComponent(
          componentId,
          widget.languageCode,
        );
        _componentCache[componentId] = comp;
      }
      components.add(_componentCache[componentId]!);
    }
    return components;
  }

  @override
  Widget build(BuildContext context) {
    final themeColors = Theme.of(context).extension<RitualThemeColors>();

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        title: Text(
          widget.title,
          style: const TextStyle(fontFamily: 'Ganapati'),
        ),
        backgroundColor: themeColors?.appBarColor,
        foregroundColor: Theme.of(context).brightness == Brightness.dark
            ? Colors.white
            : Colors.black,
      ),
      body: FutureBuilder<Ritual>(
        future: _ritualFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }

          final ritual = snapshot.data!;
          return Column(
            children: [
              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: ritual.pages.length,
                  itemBuilder: (context, index) {
                    final page = ritual.pages[index];
                    return FutureBuilder<List<Component>>(
                      future: _loadComponentsForPage(page),
                      builder: (context, compSnapshot) {
                        if (compSnapshot.connectionState ==
                            ConnectionState.waiting) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                        if (compSnapshot.hasError) {
                          return Center(
                            child: Text('Error: ${compSnapshot.error}'),
                          );
                        }

                        final components = compSnapshot.data!;
                        return SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: components.expand((comp) {
                                return comp.blocks.map(
                                  (block) => RitualBlockWidget(block: block),
                                );
                              }).toList(),
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
              SafeArea(
                top: false,
                child: AnimatedBuilder(
                  animation: _pageController,
                  builder: (context, child) {
                    double progress = 0.0;
                    if (ritual.pages.isEmpty) {
                      progress = 0.0;
                    } else if (_pageController.hasClients &&
                        _pageController.position.haveDimensions) {
                      progress =
                          ((_pageController.page ?? 0) + 1) /
                          ritual.pages.length;
                    } else {
                      // Initial state before layout
                      progress = 1 / ritual.pages.length;
                    }
                    return LinearProgressIndicator(
                      value: progress,
                      backgroundColor: themeColors?.pageIndicatorInactiveColor,
                      color:
                          themeColors?.pageIndicatorActiveColor ?? Colors.cyan,
                      minHeight: 6,
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
