import 'package:flutter/material.dart';

class MyThem {
  ThemeData lightTheme = ThemeData.light().copyWith(
    visualDensity: VisualDensity.comfortable,
    appBarTheme: const AppBarTheme(color: Colors.indigo),
    popupMenuTheme: const PopupMenuThemeData(color: Colors.amber),
    iconTheme: const IconThemeData(color: Colors.black),
    shadowColor: Colors.grey,
    splashColor: Colors.red,
    hoverColor: Colors.white,
  );
  
}
