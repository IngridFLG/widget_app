import 'package:flutter/material.dart';

const colorList = <Color> [
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.pink,
  Colors.purple,
  Colors.pinkAccent,
  Colors.red
];

class AppTheme {
  final int selectedColor;

  AppTheme({
    this.selectedColor = 0
    }): assert(
      selectedColor < colorList.length, 'el color seleccionado deber ser menor que ${colorList.length - 1}'
    );

    ThemeData getTheme() => ThemeData(
      useMaterial3: true,
      colorSchemeSeed: colorList[ selectedColor ],
      appBarTheme: const AppBarTheme(
        centerTitle: true
      )
    );


}