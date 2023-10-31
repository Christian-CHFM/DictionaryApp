// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names

import 'package:dictionary/login/dictionary-login.dart';
import 'package:flutter/material.dart';
import 'package:dictionary/style.dart';

class AccountConfirmation extends StatelessWidget {
  const AccountConfirmation({super.key});

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

              // Mensagem informando que a conta foi criada
              Center(
                child: Column(children: [
                  Padding(padding: EdgeInsets.only(bottom: 20, top: 20)),
                  Text(
                      'O cadastro foi realizado com sucesso. Próximo passo é clicar no botão abaixo para logar na sua conta.',
                      style: texto),
                ]),
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
                    child: Text('Fazer login', style: texto),
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
