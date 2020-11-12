import 'package:flutter/material.dart';

enum TipoEntrada {
  COD,
  PSSWD,
}

class TextFieldLogin extends StatelessWidget {
  final myController = TextEditingController();
  final String dica;
  final bool obscure;
  final TipoEntrada tipo;

  TextFieldLogin(this.dica, this.obscure, this.tipo);

  Widget build(BuildContext context) {
    TextField textfield;
    textfield = TextField(
      style: TextStyle(
        color: Colors.black,
        fontSize: 20,
      ),
      controller: myController,
      enableSuggestions: false,
      autocorrect: false,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(0),
        ),
        fillColor: Colors.white,
        filled: true,
        hintText: dica,
        hintStyle: TextStyle(color: Colors.grey),
        isDense: true,
        contentPadding: EdgeInsets.all(8),
      ),
      obscureText: obscure,
    );
    return Container(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.5,
        child: textfield,
      ),
    );
  }

  String get text {
    return myController.text;
  }
}
