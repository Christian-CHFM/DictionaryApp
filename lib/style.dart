// ignore_for_file: prefer_const_constructors

import 'package:dictionary/configuration/dictionary-config.dart';
import 'package:flutter/material.dart';

const menupage = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);

const textTheme = TextStyle(fontWeight: FontWeight.bold, fontSize: 14);

const comando = TextStyle(fontSize: 16, fontWeight: FontWeight.bold);

const texto = TextStyle(fontWeight: FontWeight.normal, fontSize: 14);

const titulo = TextStyle(fontWeight: FontWeight.bold, fontSize: 16);

const espaco = Padding(padding: EdgeInsets.only(bottom: 20, top: 20));

const Color drawer = Color.fromRGBO(38, 198, 218, 1);

const Color apptheme = Color.fromRGBO(0, 172, 193, 1);

const Color maintheme = Color.fromRGBO(157, 240, 239, 1);

const Color maincolumn = Colors.white;

const Color search = Color.fromRGBO(130, 130, 130, 0.49);

const Color colorseach = Colors.black;

// const Color drawer = Color.fromRGBO(65, 196, 204, 1);

const Color columns = Color.fromRGBO(144, 202, 249, 1);

const Color menu = Color.fromRGBO(65, 196, 204, 1);

const camada = TextStyle(
  fontWeight: FontWeight.normal,
  fontSize: 14,
  backgroundColor: Color.fromRGBO(217, 217, 217, 1),
);

const cores = TextStyle(
  fontWeight: FontWeight.normal,
  fontSize: 14,
  backgroundColor: Color.fromRGBO(0, 0, 0, 1),
);

const Color botao = Color.fromRGBO(45, 89, 249, 50);

const Color conta = Color.fromRGBO(255, 255, 255, 0.50);

const Color preenchimento = Color.fromRGBO(255, 255, 255, 75);

// Configurações da mudança do tamanho do texto
const small = TextStyle(fontSize: 12);

const medium = TextStyle(fontSize: 16);

const large = TextStyle(fontSize: 20);

// Tema do tamanho da fonte
TextTheme customText = TextTheme(
    bodyLarge: TextStyle(fontSize: 16),
    bodySmall: TextStyle(fontSize: 14),
    bodyMedium: TextStyle(fontSize: 14));

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        textTheme: customText,
      ),
      home: ConfigurationPage(),
    ),
  );
}
