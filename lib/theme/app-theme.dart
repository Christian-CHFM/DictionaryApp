// ignore_for_file: prefer_const_constructors, file_names

// import 'package:dictionary/style.dart';
import 'package:dictionary/style.dart';
import 'package:flutter/material.dart';

class AppTheme {
  // Configurações do TEMA CLARO
  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    // Botão do icone de FAVORITOS
    primarySwatch: Colors.grey,
    // FUNDO do aplicativo
    scaffoldBackgroundColor: maintheme,
    // Menu de CONFIGURAÇÕES do aplicativo
    drawerTheme: DrawerThemeData(backgroundColor: drawer),
    // buttonTheme: ButtonThemeData(
    //     textTheme: ButtonTextTheme.normal, buttonColor: Colors.white),
    //
    // cardTheme: CardTheme(color: Colors.white),
    // bottomAppBarTheme:
    //     BottomAppBarTheme(color: Colors.white, surfaceTintColor: Colors.white),
    // Definição da palavra no LIST TILE
    listTileTheme: ListTileThemeData(
      iconColor: Colors.black,
      textColor: Colors.black,
    ),
    // Configurações da APPBAR
    appBarTheme: AppBarTheme(
        backgroundColor: apptheme,
        titleTextStyle: const TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.bold,
          decorationColor: search,
        ),
        iconTheme: const IconThemeData(color: Colors.black),
        centerTitle: true),
    // Configurações gerais do tema claro
    colorScheme: ColorScheme.light(
        brightness: Brightness.light,
        background: Colors.white,
        onBackground: Colors.black,
        // APPBAR
        primary: Colors.black,
        onPrimary: Colors.white,
        // CARD
        surface: Colors.white,
        onSurface: Colors.black,
        // CHIP
        secondary: Colors.white,
        onSecondary: Colors.black,
        // ERRO
        onError: Colors.red,
        error: Colors.white,
        // CONTAINER
        primaryContainer: Colors.white,
        onPrimaryContainer: Colors.white,
        secondaryContainer: Colors.white54,
        onSecondaryContainer: Colors.black),
  );
  // Configurações do TEMA ESCURO
  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.grey,
    scaffoldBackgroundColor: Colors.black45,
    drawerTheme: DrawerThemeData(backgroundColor: Colors.grey),
    // buttonTheme: ButtonThemeData(
    //     textTheme: ButtonTextTheme.normal, buttonColor: Colors.black),
    // cardTheme: CardTheme(color: Colors.white),
    // bottomAppBarTheme:
    //     BottomAppBarTheme(color: Colors.grey, surfaceTintColor: Colors.white),
    listTileTheme: ListTileThemeData(
      iconColor: Colors.white,
      textColor: Colors.white,
    ),
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.grey,
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
          decorationColor: search,
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true),
    colorScheme: ColorScheme.dark(
      brightness: Brightness.dark,
      background: Colors.black,
      onBackground: Colors.white,
      // APPBAR
      primary: Colors.white,
      onPrimary: Colors.white,
      // CARD
      surface: Colors.black,
      onSurface: Colors.white,
      // CHIP
      secondary: Colors.black,
      onSecondary: Colors.white,
      // ERRO
      onError: Colors.red,
      error: Colors.black,
      // CONTAINER
      primaryContainer: Colors.black,
      onPrimaryContainer: Colors.white,
      secondaryContainer: Colors.black45,
      onSecondaryContainer: Colors.white,
    ),
  );
}
