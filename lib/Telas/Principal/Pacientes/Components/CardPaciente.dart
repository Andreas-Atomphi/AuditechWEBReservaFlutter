import 'package:flutter/material.dart';

enum TypePaciente {
  ATIVADO,
  ALERTA,
  DESATIVADO,
}

extension ColorPaciente on TypePaciente {
  List<Color> get color {
    List<Color> toReturn;
    switch (this) {
      case TypePaciente.ALERTA:
        toReturn = [
          Color(0xffffc107),
          Color(0xffffffff),
        ];
        break;
      case TypePaciente.ATIVADO:
        toReturn = [Color(0xffffffff), Color(0xff343a40)];
        break;
      case TypePaciente.DESATIVADO:
        toReturn = [
          Color(0xff343a40),
          Color(0xffffffff),
        ];
        break;
    }
    return toReturn;
  }
}

extension MapSpreadWidget on Map<String, String> {
  List<Widget> mapToWidget(Widget f(String key, String value)) {
    List<Widget> toReturn = [];
    for (int i = 0; i < this.length; i++) {
      toReturn.add(f(this.keys.elementAt(i), this.values.elementAt(i)));
    }
    return toReturn;
  }
}

class CardPaciente extends StatelessWidget {
  final EdgeInsets padding;
  final TypePaciente usuarioEsta;
  final Icon icone;
  final Map<String, String> atributos;

  CardPaciente({
    this.padding,
    this.usuarioEsta,
    this.icone,
    this.atributos = const {
      "atributo": "valor",
    },
  });

  @override
  Widget build(BuildContext context) {
    TextStyle _styleMe = TextStyle(
      fontFamily: "OpenSans",
      color: usuarioEsta.color[1],
      fontSize: 20,
      fontWeight: FontWeight.bold,
    );
    return Container(
      padding: EdgeInsets.all(20),
      color: usuarioEsta.color[0],
      child: Column(
        children: [
          Icon(
            Icons.person,
            color: usuarioEsta.color[1],
            size: 100,
          ),
          ...atributos.mapToWidget(
            (key, value) => Row(
              children: [
                Text(
                  "$key: ",
                  style: _styleMe,
                ),
                Text(
                  "$value",
                  style: _styleMe,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
