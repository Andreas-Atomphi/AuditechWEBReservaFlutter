import 'package:flutter/material.dart';
import 'package:flutterweb/Telas/Principal/Pacientes/components.dart';

class _SPacientes extends State<Pacientes> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: Container(
          padding: EdgeInsets.all(50),
          child: GridView.extent(
            maxCrossAxisExtent: 250,
            children: [
              CardPaciente(
                padding: EdgeInsets.all(20),
                usuarioEsta: TypePaciente.ATIVADO,
                icone: Icon(
                  Icons.person_outline,
                  size: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Pacientes extends StatefulWidget {
  State<Pacientes> createState() {
    return _SPacientes();
  }
}
