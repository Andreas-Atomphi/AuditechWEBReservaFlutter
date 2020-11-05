import 'package:flutter/material.dart';
import 'package:flutterweb/mainData.dart';
import 'Telas/telas.dart';

void main() {
  startApp();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: mainRoutes,
      initialRoute: "inicio",
      home: Inicio(),
      theme: ThemeData(
        primaryColor: primary,
        accentColor: secondary,
      ),
    );
  }
}

void startApp() {
  runApp(MyApp());
}
