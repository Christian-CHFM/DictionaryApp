// ignore_for_file: prefer_const_constructors

import 'package:dictionary/configuration/dictionary-config.dart';
import 'package:dictionary/menu/homepage.dart';
import 'package:dictionary/login/dictionary-createaccount.dart';
import 'package:dictionary/login/dictionary-createdaccount.dart';
import 'package:dictionary/login/dictionary-changepassword.dart';
import 'package:dictionary/login/dictionary-forgetpassword.dart';
import 'package:dictionary/menu/homepage-favorite.dart';
import 'package:dictionary/menu/homepage-config.dart';
import 'package:dictionary/theme/app-theme.dart';
import 'package:dictionary/theme/theme-provider.dart';
import 'package:flutter/material.dart';
import 'package:dictionary/search/dictionary-search.dart';
import 'package:dictionary/login/dictionary-login.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://yqkqzuxiztfcgedrdmfg.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inlxa3F6dXhpenRmY2dlZHJkbWZnIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTg0MzQzNDQsImV4cCI6MjAxNDAxMDM0NH0.-S6YS6j_LKiNQ7qgzU1TF6D2x6nmEyetqKElj12JuqY',
  );
  runApp(const ProviderScope(child: CodexProgramador()));
}

// void main() {
//   runApp(const ProviderScope(child: CodexProgramador()));
// }

class CodexProgramador extends HookConsumerWidget {
  const CodexProgramador({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appThemeState = ref.watch(appThemeStateNotifier);
    return MaterialApp(
      routes: {
        '/search': (context) => DictionarySearchPage(),
        '/favorite': (context) => SecondPage(),
        '/menu': (context) => HomePage(),
        '/config': (context) => ThirdPage(),
        '/login': (context) => LoginPage(),
        '/account': (context) => AccountCreatePage(),
        '/confirmation': (context) => AccountConfirmation(),
        '/password': (context) => PasswordPage(),
        '/passconfirm': (context) => PasswordConfirmation(),
      },
      // Rota que deve iniciar toda vez que executar
      initialRoute: '/login',
      // Tema do aplicativo
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode:
          appThemeState.isDarkModeEnabled ? ThemeMode.dark : ThemeMode.light,
      // Local em que está a alteração do tema
      home: ConfigurationPage(),
    );
  }
}
