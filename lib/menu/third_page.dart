// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dictionary/configuration/dictionary-config.dart';
import 'package:flutter/material.dart';
import 'package:dictionary/style.dart';
import 'package:dictionary/homepage.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar do aplicativo
      appBar: AppBar(
        // Icone do Menu de configurações
        iconTheme: IconThemeData(color: colorseach),
        // Nome do aplicativo
        title: Text("Configurações"),
        centerTitle: true,
        // Fundo do aplicativo da AppBar
        backgroundColor: theme,
        elevation: 0,
        // Barra de pesquisa
        bottom: PreferredSize(
          preferredSize: Size(50.0, 50.0),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              cursorColor: colorseach,
              decoration: InputDecoration(
                // Icone de pesquisa e fechar da barra de pesquisa
                prefixIcon: Icon(
                  Icons.search_rounded,
                  color: colorseach,
                ),
                suffixIcon: Icon(
                  Icons.clear,
                  color: colorseach,
                ),
                hintText: 'Search',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide.none),
                contentPadding: EdgeInsets.zero,
                filled: true,
                fillColor: search,
              ),
            ),
          ),
        ),
      ),

      // Fundo do aplicativo do Drawer
      backgroundColor: ftheme,

      // Opções do Menu de configurações
      drawer: HomePage(),

      // Lista das palavras que são favoritas
      body: ConfigurationPage(),
    );
  }
}
