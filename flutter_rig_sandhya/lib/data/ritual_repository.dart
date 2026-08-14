import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import '../core/models/component.dart';
import '../core/models/index.dart';
import '../core/models/ritual.dart';

class RitualRepository {
  final String basePath = 'assets/i18n';

  /// Loads the main app index (home page items)
  Future<AppIndex> loadIndex(String languageCode) async {
    final path = '$basePath/$languageCode/index.json';
    try {
      final jsonString = await rootBundle.loadString(path);
      final jsonMap = jsonDecode(jsonString);
      return AppIndex.fromJson(jsonMap);
    } catch (e) {
      throw Exception(
        'Failed to load index file from bundle: $path. Error: $e',
      );
    }
  }

  /// Loads a ritual and resolves all its referenced components
  Future<Ritual> loadRitual(String ritualId, String languageCode) async {
    final path = '$basePath/$languageCode/rituals/$ritualId.json';
    try {
      final jsonString = await rootBundle.loadString(path);
      final jsonMap = jsonDecode(jsonString);
      return Ritual.fromJson(jsonMap);
    } catch (e) {
      throw Exception(
        'Failed to load ritual file from bundle: $path. Error: $e',
      );
    }
  }

  /// Loads a specific component by ID
  Future<Component> loadComponent(
    String componentId,
    String languageCode,
  ) async {
    final path = '$basePath/$languageCode/components/$componentId.json';
    try {
      final jsonString = await rootBundle.loadString(path);
      final jsonMap = jsonDecode(jsonString);
      return Component.fromJson(jsonMap);
    } catch (e) {
      throw Exception(
        'Failed to load component file from bundle: $path. Error: $e',
      );
    }
  }
}
