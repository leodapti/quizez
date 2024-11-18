import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../theme/theme_provider.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Select Theme',
              style: themeProvider.currentFont.copyWith(fontSize: 18),
            ),
            for (int i = 0; i < themeProvider.themes.length; i++)
              RadioListTile(
                title: Text('Theme ${i + 1}', style: themeProvider.currentFont),
                value: i,
                groupValue: themeProvider.themes.indexOf(themeProvider.currentThemeData),
                onChanged: (_) {
                  themeProvider.changeTheme(i);
                },
              ),
            const Divider(),
            Text(
              'Select Font',
              style: themeProvider.currentFont.copyWith(fontSize: 18),
            ),
            for (int i = 0; i < themeProvider.fonts.length; i++)
              RadioListTile(
                title: Text('Font ${i + 1}', style: themeProvider.fonts[i]),
                value: i,
                groupValue: themeProvider.fonts.indexOf(themeProvider.currentFont),
                onChanged: (_) {
                  themeProvider.changeFont(i);
                },
              ),
          ],
        ),
      ),
    );
  }
}
