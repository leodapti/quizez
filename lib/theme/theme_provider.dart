import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeProvider extends ChangeNotifier {
  // Default Theme and Font
  ThemeData _currentThemeData = _themes[0];
  TextStyle _currentFont = _fonts[0];

  static final List<ThemeData> _themes = [
    ThemeData(
      primarySwatch: Colors.blue,
      scaffoldBackgroundColor: Colors.lightBlue[50],
      buttonTheme: const ButtonThemeData(buttonColor: Colors.blue),
    ),
    ThemeData(
      primarySwatch: Colors.green,
      scaffoldBackgroundColor: Colors.green[50],
      buttonTheme: const ButtonThemeData(buttonColor: Colors.green),
    ),
    ThemeData(
      primarySwatch: Colors.orange,
      scaffoldBackgroundColor: Colors.orange[50],
      buttonTheme: const ButtonThemeData(buttonColor: Colors.orange),
    ),
  ];

  static final List<TextStyle> _fonts = [
    GoogleFonts.lato(),
    GoogleFonts.roboto(),
    GoogleFonts.pacifico(),
  ];

  // Getters for public access
  List<ThemeData> get themes => _themes;
  List<TextStyle> get fonts => _fonts;

  ThemeData get currentThemeData => _currentThemeData;
  TextStyle get currentFont => _currentFont;

  void changeTheme(int index) {
    _currentThemeData = _themes[index];
    notifyListeners();
  }

  void changeFont(int index) {
    _currentFont = _fonts[index];
    notifyListeners();
  }
}
