import 'package:auditech_web/mainData.dart';
import 'package:flutter/material.dart';
import 'package:auditech_web/Telas/Principal/Pacientes/components.dart';

class _SPacientes extends State<Pacientes> {
  @override
  Widget build(BuildContext context) {
    double _crossAxisSpacing = 20;
    NovidadesPaciente statusPaciente = NovidadesPaciente.NOVO;
    bool statusTexto = statusPaciente.status;
    String statusUsuario = {
      true: "Ativo",
      false: "Inativo",
    }[statusTexto];
    return MaterialApp(
      home: Scaffold(
        backgroundColor: primary.subRGB(22),
        body: Container(
          padding: EdgeInsets.all(50),
          child: GridView.extent(
            physics: PageScrollPhysics(),
            childAspectRatio: 0.85,
            crossAxisSpacing: _crossAxisSpacing,
            maxCrossAxisExtent: 200,
            mainAxisSpacing: _crossAxisSpacing,
            children: [
              CardPaciente(
                aoClicar: () {
                  print("paciente");
                },
                usuarioEsta: statusPaciente,
                title: "AAAAAAAA",
                dados: {
                  "Status": statusUsuario,
                  "Tratamento": "aaaa",
                },
              ),
              CardPaciente(
                usuarioEsta: NovidadesPaciente.NORMAL,
                title: "AAAAAAAA",
                dados: {
                  "Status": "Ativo",
                  "Tratamento": "aaaa",
                },
              ),
              CardPaciente(
                usuarioEsta: NovidadesPaciente.ALERTA,
                title: "AAAAAAAA",
                dados: {
                  "Status": "Ativo",
                  "Tratamento": "aaaa",
                },
              ),
              CardPaciente(
                usuarioEsta: NovidadesPaciente.DESATIVADO,
                title: "AAAAAAAA",
                dados: {
                  "Status": "Ativo",
                  "Tratamento": "aaaa",
                },
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
