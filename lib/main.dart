import 'package:dictionaryapp/riverpod/loger.dart';
import 'package:dictionaryapp/services/routes/approutes.dart';
import 'package:dictionaryapp/themes/theme.dart';
import 'package:dictionaryapp/themes/theme_manager.dart';
import 'package:dictionaryapp/views/account/signin.dart';
import 'package:dictionaryapp/views/homepage/homepage_view.dart';
import 'package:dictionaryapp/views/splashview/splashview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(MyApp());
}

final ThemeManager themeManager = ThemeManager();
final GoRouter _router = Approutes().router;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      observers: [Logger()],
      child: AnimatedBuilder(
        animation: themeManager,
        builder: (context, _) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: 'Theme Demo',
            theme: AppThemes.lightTheme,
            darkTheme: AppThemes.darkTheme,
            themeMode: themeManager.themeMode,
            routerConfig: _router,
          );
        },
      ),
    );
  }
}
