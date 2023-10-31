// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, file_names

import 'package:dictionary/login/dictionary-login.dart';
import 'package:flutter/material.dart';
import 'package:dictionary/style.dart';

class PasswordConfirmation extends StatelessWidget {
  const PasswordConfirmation({super.key});

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

              // Digitar a nova senha da conta
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(bottom: 20, top: 20)),
                  Text(
                    'Nova senha',
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
                    borderSide: BorderSide.none,
                  ),
                  hintText: 'Nova senha',
                  filled: true,
                  fillColor: preenchimento,
                ),
              ),

              // Reescrever a nova senha
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(bottom: 20, top: 20)),
                  Text(
                    'Reescreva a nova senha',
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
                    borderSide: BorderSide.none,
                  ),
                  hintText: 'Reescreva a nova senha',
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
                            builder: (context) => const LoginPage()),
                      );
                    },
                    child: Text('Redefinir senha', style: texto),
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
