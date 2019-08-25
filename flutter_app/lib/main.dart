import 'package:flutter/material.dart';
import 'package:flutter_app/splash.dart';

void main() {
  runApp(new MaterialApp(
    title: "金融Flutter",
    theme: new ThemeData(
      primaryIconTheme: const IconThemeData(color: Colors.white),
      brightness: Brightness.light,
      primaryColor: new Color.fromARGB(255, 0, 215, 198),
      accentColor: Colors.yellow[300],
    ),
    home: new SplashPage(),

  ));
}