// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:dictionary/search/dictionary-search.dart';
import 'package:dictionary/login/dictionary-createaccount.dart';
import 'package:dictionary/login/dictionary-forgetpassword.dart';
import 'package:dictionary/style.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromRGBO(65, 179, 204, 0.70),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
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

              // Botão para fazer o login
              Column(
                children: [
                  Padding(padding: EdgeInsets.only(bottom: 20, top: 25)),
                  TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: botao, foregroundColor: Colors.black),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DictionarySearchPage()),
                      );
                    },
                    child: Text('Logar', style: texto),
                  ),
                ],
              ),

              // Botão para criar a conta
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
                            builder: (context) => const AccountCreatePage()),
                      );
                    },
                    child: Text('Criar conta', style: texto),
                  ),
                ],
              ),

              // Botão para redefinir a senha
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
                            builder: (context) => const PasswordPage()),
                      );
                    },
                    child: Text('Esqueceu a senha?', style: texto),
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
