// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dictionary/menu/homepage.dart';
import 'package:flutter/material.dart';
import 'package:dictionary/style.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: theme,
        elevation: 0,
        // Icone do Menu de configurações
        // iconTheme: IconThemeData(color: colorseach),
        title: Text("Perfil"),
        centerTitle: true,
        // titleTextStyle: titulo,
      ),
      drawer: HomePage(),
      // backgroundColor: Color.fromRGBO(65, 179, 204, 0.70),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Nome do aplicativo
              Text(
                "Códex do Programador",
                textAlign: TextAlign.center,
                style: titulo,
              ),

              // Logo do aplicativo
              Image.asset(
                'images/Logo.png',
                width: 100,
                height: 100,
              ),

              // Campo nome do perfil MODIFICAR
              // Row(
              //   children: [
              //     Padding(padding: EdgeInsets.only(bottom: 20, top: 20)),
              //     Container(
              //       decoration: BoxDecoration(
              //         color: Colors.white,
              //         borderRadius: BorderRadius.circular(10),
              //       ),
              //       width: 200,
              //       height: 50,
              //       child: Text('Fulano Ciclano'),
              //     ),
              //     Container(
              //       decoration: BoxDecoration(
              //         color: Colors.white,
              //         borderRadius: BorderRadius.circular(10),
              //       ),
              //       width: 200,
              //       height: 50,
              //       child: Text('fulanociclano@dominio.com'),
              //     ),
              //   ],
              // ),
              Row(
                children: [
                  Text(
                    'Fulano Ciclano',
                    style: TextStyle(backgroundColor: Colors.white),
                  ),
                ],
              ),
              Row(
                children: [
                  Text('fulanociclano@dominio.com',
                      style: TextStyle(backgroundColor: Colors.white))
                ],
              ),

              // TextField(
              //   keyboardType: TextInputType.emailAddress,
              //   // cursorColor: colorseach,
              //   decoration: InputDecoration(
              //     border: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(10),
              //       borderSide: BorderSide.none,
              //     ),
              //     hintText: 'Fulano Ciclano',
              //     filled: true,
              //     fillColor: preenchimento,
              //   ),
              // ),

              // Row(
              //   children: [
              //     Padding(padding: EdgeInsets.only(bottom: 20, top: 20)),
              //     Container(
              //       decoration: BoxDecoration(
              //         color: Colors.white,
              //         borderRadius: BorderRadius.circular(10),
              //       ),
              //       width: 200,
              //       height: 50,
              //       child: Column(
              //         children: [Text('fulanociclano@dominio.com')],
              //       ),
              //     ),
              //   ],
              // ),

              // Campo e-mail do perfil MODIFICAR
              // TextField(
              //   keyboardType: TextInputType.emailAddress,
              //   // cursorColor: colorseach,
              //   decoration: InputDecoration(
              //     border: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(10),
              //       borderSide: BorderSide.none,
              //     ),
              //     hintText: 'fulanociclano@domino.com',
              //     filled: true,
              //     fillColor: preenchimento,
              //   ),
              // ),

              // Botão para editar o perfil
              Column(
                children: [
                  Padding(padding: EdgeInsets.only(bottom: 20, top: 20)),
                  TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: conta, foregroundColor: Colors.black),
                    onPressed: () {},
                    child: Text('Alterar conta', style: texto),
                  ),
                ],
              ),

              // Botão para remover o perfil
              Column(
                children: [
                  Padding(padding: EdgeInsets.only(bottom: 20, top: 20)),
                  TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: conta, foregroundColor: Colors.black),
                    onPressed: () {},
                    child: Text('Remover conta', style: texto),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
