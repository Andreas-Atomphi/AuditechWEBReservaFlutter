import 'package:flutter/material.dart';
import 'package:flutterweb/Telas/Principal/Pacientes/components.dart';

class _SPacientes extends State<Pacientes> {
  @override
  Widget build(BuildContext context) {
    NovidadesPaciente statusPaciente = NovidadesPaciente.NOVO;
    bool statusTexto = statusPaciente.status;
    String statusUsuario = {
      true: "Ativo",
      false: "Inativo",
    }[statusTexto];
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: Container(
          padding: EdgeInsets.all(50),
          child: GridView.extent(
            crossAxisSpacing: 20,
            maxCrossAxisExtent: 255,
            children: [
              CardPaciente(
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
