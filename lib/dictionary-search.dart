// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, file_names;, file_names
import 'package:dictionary/homepage.dart';
import 'package:flutter/material.dart';
import 'package:dictionary/style.dart';

class DictionarySearchPage extends StatelessWidget {
  const DictionarySearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar do aplicativo
      appBar: AppBar(
        // Icone do Menu de configurações
        iconTheme: IconThemeData(color: colorseach),
        // Nome do aplicativo
        title: Text("Códex do Programador"),
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

      // Texto com a definição da palavra pesquisada
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: Column(
            children: [
              Row(
                children: [
                  Text('Print', textAlign: TextAlign.left, style: titulo),
                  Padding(padding: EdgeInsets.only(bottom: 40)),
                ],
              ),
              Row(
                children: [
                  Text('Função principal mostrar na tela',
                      textAlign: TextAlign.justify, style: texto),
                ],
              ),
              // Primeira box da linguagem Python
              Padding(
                // Espaçamento da box
                padding: const EdgeInsets.all(20.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    // Espaçamento do texto
                    padding: EdgeInsets.only(left: 16, top: 19, right: 16),
                    height: 300,
                    width: 300,
                    color: columns,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text('Python',
                                textAlign: TextAlign.center, style: titulo),
                            Padding(padding: EdgeInsets.only(bottom: 40)),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'print("Olá, mundo!")',
                              textAlign: TextAlign.justify,
                              style: texto,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // Segunda box da linguagem C#
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: EdgeInsets.only(left: 16, top: 19, right: 16),
                    height: 300,
                    width: 300,
                    color: columns,
                    child: Column(
                      children: [
                        Text(
                          'C#',
                          textAlign: TextAlign.center,
                          style: titulo,
                        ),
                        Text(
                          'Console.Write("Olá, mundo!");\nConsole.WriteLine("Olá, mundo!");',
                          textAlign: TextAlign.center,
                          style: texto,
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // Terceira box da linguagem Java
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: EdgeInsets.only(left: 16, top: 19, right: 16),
                    height: 300,
                    width: 300,
                    color: columns,
                    child: Column(
                      children: [
                        Text(
                          'Java',
                          textAlign: TextAlign.center,
                          style: titulo,
                        ),
                        Text(
                          'public class Main { \npublic static void main(String[] args) { \nSystem.out.println("Olá, mundo!"); \n} \n}',
                          textAlign: TextAlign.center,
                          style: texto,
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // Quarta box saída de dados
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: EdgeInsets.only(left: 16, top: 19, right: 16),
                    height: 300,
                    width: 300,
                    color: columns,
                    child: Column(
                      children: [
                        Text(
                          'Saída de Dados',
                          textAlign: TextAlign.center,
                          style: titulo,
                        ),
                        Text(
                          'Olá, mundo!',
                          textAlign: TextAlign.center,
                          style: texto,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
