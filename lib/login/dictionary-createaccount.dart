// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables

import 'package:dictionary/login/dictionary-createdaccount.dart';
import 'package:dictionary/login/dictionary-login.dart';
import 'package:flutter/material.dart';
import 'package:dictionary/style.dart';

class AccountCreatePage extends StatelessWidget {
  const AccountCreatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                // color: Color.fromRGBO(45, 89, 249, 0.49),
              ),

              // Digitar o campo nome da conta
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(bottom: 20, top: 20)),
                  Text(
                    'Nome',
                    style: texto,
                    textAlign: TextAlign.left,
                  ),
                ],
              ),

              TextField(
                keyboardType: TextInputType.name,
                // cursorColor: colorseach,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  hintText: 'Fulano',
                  filled: true,
                  fillColor: preenchimento,
                ),
              ),

              // Digitar o campo sobrenome da conta
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(bottom: 20, top: 20)),
                  Text(
                    'Sobrenome',
                    style: texto,
                    textAlign: TextAlign.left,
                  ),
                ],
              ),

              TextField(
                keyboardType: TextInputType.name,
                // cursorColor: colorseach,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  hintText: 'Ciclano',
                  filled: true,
                  fillColor: preenchimento,
                ),
              ),

              // Digitar o campo e-mail da conta
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(bottom: 20, top: 20)),
                  Text(
                    'E-mail',
                    style: texto,
                    textAlign: TextAlign.left,
                  ),
                ],
              ),

              TextField(
                keyboardType: TextInputType.emailAddress,
                // cursorColor: colorseach,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  hintText: 'fulanociclano@domino.com',
                  filled: true,
                  fillColor: preenchimento,
                ),
              ),

              // Digitar o campo senha da conta
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(bottom: 20, top: 20)),
                  Text(
                    'Senha',
                    style: texto,
                    textAlign: TextAlign.left,
                  ),
                ],
              ),

              TextField(
                obscureText: true,
                keyboardType: TextInputType.text,
                // cursorColor: colorseach,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none),
                  hintText: 'Senha',
                  filled: true,
                  fillColor: preenchimento,
                ),
              ),

              // Botão para criar a conta
              Column(
                children: [
                  Padding(padding: EdgeInsets.only(bottom: 20, top: 20)),
                  TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: botao, foregroundColor: Colors.black),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AccountConfirmation()),
                      );
                    },
                    child: Text('Cadastrar', style: texto),
                  ),
                ],
              ),

              // Botão para voltar
              Column(
                children: [
                  Padding(padding: EdgeInsets.only(bottom: 20, top: 20)),
                  TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: conta, foregroundColor: Colors.black),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()),
                      );
                    },
                    child: Text('Voltar', style: texto),
                  ),
                ],
              ),

              // Futuras implementações
            ],
          ),
        ),
      ),
    );
  }
}
