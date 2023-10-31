// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, must_be_immutable, prefer_const_constructors_in_immutables, prefer_typing_uninitialized_variables, non_constant_identifier_names

import 'package:dictionary/theme/theme-provider.dart';
import 'package:flutter/material.dart';
import 'package:dictionary/style.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ConfigurationPage extends StatefulWidget {
  ConfigurationPage({super.key});

  @override
  State<ConfigurationPage> createState() => _ConfigurationPageState();
}

class _ConfigurationPageState extends State<ConfigurationPage> {
  // Mudança do tema claro e escuro
  bool switchValue = false;
  // Tamanho da fonte selecionado
  late List<bool> isSelected;
  double fontSize = 16.0;
  // Tamanho pequeno, médio e grande
  getFontSize(index) {
    if (index == 0) {
      return 12.0;
    } else if (index == 1) {
      return 16.0;
    } else if (index == 2) {
      return 20.0;
    }
  }

  // Tamanho padrão da fonte
  @override
  void initState() {
    isSelected = [false, true, false];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(20),
        alignment: Alignment.center,
        child: Column(
          children: [
            // Alteração do tamanho da fonte do aplicativo
            Row(
              children: [
                Text(
                  'Tamanho da Fonte',
                  textAlign: TextAlign.left,
                  style: texto,
                ),
                // Mudança do tamanho da fonte
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: ToggleButtons(
                    color: Colors.white,
                    children: [
                      Text('A', style: TextStyle(fontSize: 12.0)),
                      Text('A', style: TextStyle(fontSize: 16.0)),
                      Text('A', style: TextStyle(fontSize: 20.0)),
                    ],
                    isSelected: isSelected,
                    onPressed: (int index) {
                      setState(() {
                        for (int list = 0; list < isSelected.length; list++) {
                          if (list == index) {
                            isSelected[list] = true;
                          } else {
                            isSelected[list] = false;
                          }
                        }
                        fontSize = getFontSize(index);
                      });
                    },
                  ),
                ),
              ],
            ),
            // Alteração do tema do aplicativo
            Row(
              children: [
                Text(
                  'Esquemas de cores',
                  textAlign: TextAlign.left,
                  style: texto,
                ),
                DarkModeSwitch(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// Alteração do tema no aplicativo
class DarkModeSwitch extends HookConsumerWidget {
  const DarkModeSwitch({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appThemeState = ref.watch(appThemeStateNotifier);
    return Switch(
      value: appThemeState.isDarkModeEnabled,
      onChanged: (enabled) {
        if (enabled) {
          appThemeState.setDarkTheme();
        } else {
          appThemeState.setLightTheme();
        }
      },
    );
  }
}
