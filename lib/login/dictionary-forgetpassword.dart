// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dictionary/login/dictionary-login.dart';
import 'package:dictionary/login/dictionary-changepassword.dart';
import 'package:flutter/material.dart';
import 'package:dictionary/style.dart';

class PasswordPage extends StatelessWidget {
  const PasswordPage({super.key});

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
                  hintText: 'fulanociclano@dominio.com',
                  filled: true,
                  fillColor: preenchimento,
                ),
              ),

              // Mensagem

              Center(
                child: Column(children: [
                  Padding(padding: EdgeInsets.only(top: 20, bottom: 20)),
                  Text(
                      'Clique no botão Enviar solicitação para enviar a redefinição de senha no e-mail preenchido. Entre no e-mail e clique na opção Redefinir a senha para entrar na página de redefinição da senha.',
                      style: texto),
                ]),
              ),

              // Botão para redefinir a senha
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
                            builder: (context) => const PasswordConfirmation()),
                      );
                    },
                    child: Text('Enviar solicitação', style: texto),
                  ),
                ],
              ),

              // Retornar para a tela de login
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
            ],
          ),
        ),
      ),
    );
  }
}
