import 'package:flutter/material.dart';

class FormatoTexto {
  static TextStyle tituloCard({
    Color cor = Colors.black,
    double size = 20,
    FontWeight weight = FontWeight.normal,
  }) {
    return TextStyle(
      fontFamily: "OpenSans",
      color: cor,
      fontSize: size,
      fontWeight: weight,
    );
  }
}
