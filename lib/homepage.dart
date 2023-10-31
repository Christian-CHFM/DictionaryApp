// ignore_for_file: prefer_const_constructors

// import 'package:dictionary/dictionary-search.dart';
import 'package:flutter/material.dart';
import 'package:dictionary/style.dart';

import 'package:dictionary/menu/first_page.dart';
import 'package:dictionary/menu/second_page.dart';
import 'package:dictionary/menu/third_page.dart';
import 'package:dictionary/menu/fourth_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: menu,
        child: ListView(
          children: [
            DrawerHeader(
              child: Center(
                child: Text(
                  'Códex do Programador',
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
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
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text(
                'Sair',
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => FourthPage(),
                  ),
                );
              },
            ),
            // ListTile(
            //   leading: Icon(Icons.keyboard_backspace),
            //   title: Text(
            //     'Inicio',
            //     style: TextStyle(fontSize: 20),
            //   ),
            //   onTap: () {
            //     Navigator.of(context).push(
            //       MaterialPageRoute(
            //         builder: (context) => DictionarySearchPage(),
            //       ),
            //     );
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
