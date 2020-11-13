import 'package:auditech_web/Telas/Principal/Perfil/Componentes/components.dart';
import 'package:auditech_web/Telas/Principal/telas.dart';
import 'package:auditech_web/Telas/global/components.dart';
import 'package:flutter/material.dart';
import 'package:auditech_web/mainData.dart';

class SPerfilProfissional extends State<Perfil> {
  @override
  void initState() {
    super.initState();
  }

  var nomeController = TextEditingController();
  var idController = TextEditingController();
  var cpfController = TextEditingController();
  var clinicaController = TextEditingController();
  var enderecoController = TextEditingController();
  var numController = TextEditingController();
  var complementoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    List<FieldWTitle> fields = [
      FieldWTitle(
        title: "Nome",
        width: size.width * 0.25,
        controller: nomeController,
      ),
      FieldWTitle(
        title: "ID",
        width: size.width * 0.25,
        controller: idController,
      ),
      FieldWTitle(
        title: "CPF",
        width: size.width * 0.25,
        controller: cpfController,
      ),
      FieldWTitle(
        title: "Clínica",
        width: size.width * 0.25,
        controller: clinicaController,
      ),
      FieldWTitle(
        title: "Endereço",
        width: size.width * 0.45,
        controller: enderecoController,
      ),
      FieldWTitle(
        title: "Nº",
        width: size.width * 0.05,
        controller: numController,
      ),
      FieldWTitle(
        title: "Complemento",
        width: size.width * 0.10,
        controller: complementoController,
      ),
    ];

    return MaterialApp(
      home: Scaffold(
        backgroundColor: primary.subRGB(30),
        appBar: DefaultAppBar(
          leading: BackButton(
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: Stack(
          children: [
            Positioned(
              top: size.height * 0.10,
              bottom: size.height * 0.10,
              left: size.width * 0.15,
              child: Container(
                padding: EdgeInsets.all(50),
                width: size.width * 0.7,
                height: size.height * 0.8,
                decoration: BoxDecoration(
                  color: Colors.cyan[900],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Spacer(
                            flex: 1,
                          ),
                          fields[0],
                          Spacer(
                            flex: 1,
                          ),
                          fields[1],
                          Spacer(
                            flex: 1,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Spacer(
                            flex: 1,
                          ),
                          fields[2],
                          Spacer(
                            flex: 1,
                          ),
                          SizedBox(
                            width: size.width * .25,
                          ),
                          Spacer(
                            flex: 1,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Spacer(
                            flex: 1,
                          ),
                          fields[3],
                          Spacer(
                            flex: 1,
                          ),
                          SizedBox(
                            width: size.width * 0.25,
                          ),
                          Spacer(
                            flex: 1,
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Spacer(
                            flex: 1,
                          ),
                          fields[4],
                          Spacer(
                            flex: 1,
                          ),
                          fields[5],
                          Spacer(
                            flex: 1,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Spacer(
                            flex: 1,
                          ),
                          fields[6],
                          Spacer(
                            flex: 1,
                          ),
                          SizedBox(
                            width: size.width * 0.40,
                          ),
                          Spacer(
                            flex: 1,
                          ),
                        ],
                      ),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Text("Entrar"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
