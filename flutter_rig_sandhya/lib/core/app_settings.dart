import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppSettings extends ChangeNotifier {
  static const String _languageKey = 'preferred_language';

  static const String _useGoogleFontsKey = 'use_google_fonts';

  String _currentLanguage = 'kn'; // default
  bool _useGoogleFonts = true; // default to new fonts

  String get currentLanguage => _currentLanguage;
  bool get useGoogleFonts => _useGoogleFonts;

  AppSettings() {
    _loadSettings();
  }

  Future<void> _loadSettings() async {
    final prefs = await SharedPreferences.getInstance();
    _currentLanguage = prefs.getString(_languageKey) ?? 'kn';
    _useGoogleFonts = prefs.getBool(_useGoogleFontsKey) ?? true;
    notifyListeners();
  }

  Future<void> changeLanguage(String langCode) async {
    if (_currentLanguage == langCode) return;
    _currentLanguage = langCode;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_languageKey, langCode);
    notifyListeners();
  }

  Future<void> toggleFont() async {
    _useGoogleFonts = !_useGoogleFonts;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_useGoogleFontsKey, _useGoogleFonts);
    notifyListeners();
  }
}
