import 'package:auditech_web/Telas/Principal/componentes/components.dart';
import 'package:flutter/material.dart';
import 'package:auditech_web/mainData.dart';

class DefaultAppBar extends AppBar {
  DefaultAppBar({
    void Function() aoPressionar,
    Widget leading,
  }) : super(
          backgroundColor: primary,
          title: Align(
            alignment: Alignment(-0.95, 0),
            child: Text("Auditech"),
          ),
          leading: leading,
          actions: [
            UserButton(
                backgroundColor: Colors.cyan[800],
                foregroundColor: Colors.white,
                raio: kToolbarHeight - 10,
                aoPressionar: aoPressionar),
          ],
        );
}
