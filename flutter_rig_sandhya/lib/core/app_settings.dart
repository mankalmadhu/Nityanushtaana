import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppSettings extends ChangeNotifier {
  static const String _languageKey = 'preferred_language';

  String _currentLanguage = 'kn'; // default

  String get currentLanguage => _currentLanguage;

  AppSettings() {
    _loadSettings();
  }

  Future<void> _loadSettings() async {
    final prefs = await SharedPreferences.getInstance();
    _currentLanguage = prefs.getString(_languageKey) ?? 'kn';
    notifyListeners();
  }

  Future<void> changeLanguage(String langCode) async {
    if (_currentLanguage == langCode) return;
    _currentLanguage = langCode;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_languageKey, langCode);
    notifyListeners();
  }
}
