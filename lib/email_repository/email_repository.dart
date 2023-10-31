import 'package:flutter/material.dart';

class ContaRepository extends ChangeNotifier {
  late Database db;
  List<Posicao> _email = [];
}
