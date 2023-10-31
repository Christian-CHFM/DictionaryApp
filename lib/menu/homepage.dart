// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:dictionary/login/dictionary-login.dart';
import 'package:flutter/material.dart';
import 'package:dictionary/style.dart';
import 'package:dictionary/menu/homepage-perfil.dart';
import 'package:dictionary/menu/homepage-favorite.dart';
import 'package:dictionary/menu/homepage-config.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        // color: menu,
        child: ListView(
          children: [
            DrawerHeader(
              child: Center(
                child: Text(
                  'Códex do Programador',
                  style: menupage,
                ),
              ),
            ),

            // Menu do perfil
            ListTile(
              leading: Icon(Icons.person),
              title: Text(
                'Perfil',
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => FirstPage(),
                  ),
                );
              },
            ),

            // Menu de favoritos
            ListTile(
              leading: Icon(Icons.star),
              title: Text(
                'Favoritos',
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SecondPage(),
                  ),
                );
              },
            ),

            // Menu de configurações
            ListTile(
              leading: Icon(Icons.settings),
              title: Text(
                'Configurações',
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ThirdPage(),
                  ),
                );
              },
            ),

            // Deslogar da conta
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text(
                'Sair',
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
