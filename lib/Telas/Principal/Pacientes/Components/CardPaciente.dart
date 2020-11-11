import 'package:flutter/material.dart';
import 'package:flutterweb/Telas/global/components.dart';

enum NovidadesPaciente {
  NORMAL,
  ALERTA,
  NOVO,
  DESATIVADO,
}

extension ValuesPaciente on NovidadesPaciente {
  List<Color> get color {
    List<Color> toReturn;
    switch (this) {
      case NovidadesPaciente.ALERTA:
        toReturn = [
          Color(0xffffc107),
          Color(0xffffffff),
        ];
        break;
      case NovidadesPaciente.NORMAL:
        toReturn = [
          Color(0xffffffff),
          Color(0xff343a40),
        ];
        break;
      case NovidadesPaciente.DESATIVADO:
        toReturn = [
          Color(0xff343a40),
          Color(0xff778491),
        ];
        break;
      case NovidadesPaciente.NOVO:
        toReturn = [
          Color(0xff75e900),
          Color(0xffffffff),
        ];
        break;
    }
    return toReturn;
  }

  String get texto {
    String toReturn;
    switch (this) {
      case NovidadesPaciente.ALERTA:
        toReturn = "Alerta";
        break;
      case NovidadesPaciente.NORMAL:
        toReturn = "Normal";
        break;
      case NovidadesPaciente.DESATIVADO:
        toReturn = "Desativado";
        break;
      case NovidadesPaciente.NOVO:
        toReturn = "Novo";
        break;
    }
    return toReturn;
  }

  bool get status {
    bool toReturn;
    switch (this) {
      case NovidadesPaciente.DESATIVADO:
        toReturn = false;
        break;
      default:
        toReturn = true;
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

class CardPaciente extends Card {
  final EdgeInsets padding;
  final NovidadesPaciente usuarioEsta;
  final Icon icone;
  final Map<String, String> dados;
  final String title;

  CardPaciente({
    this.padding = const EdgeInsets.all(20),
    this.usuarioEsta = NovidadesPaciente.NORMAL,
    this.title,
    this.icone = const Icon(
      Icons.person,
      size: 20,
    ),
    this.dados = const {
      "atributo": "valor",
    },
  });

  @override
  Widget build(BuildContext context) {
    Text _cardBody(String text) => Text(
          text,
          style: FormatoTexto.tituloCard(
            cor: usuarioEsta.color[1],
            weight: FontWeight.bold,
          ),
        );
    Text _cardTitle(String text) => Text(
          text,
          style: FormatoTexto.tituloCard(
            cor: usuarioEsta.color[1],
            weight: FontWeight.bold,
          ),
        );
    Map statusIcon = {
      NovidadesPaciente.DESATIVADO: Icons.person,
      NovidadesPaciente.NORMAL: Icons.person,
      NovidadesPaciente.NOVO: Icons.new_releases,
      NovidadesPaciente.ALERTA: Icons.warning,
    };
    return ContainerCard(
      padding: EdgeInsets.all(20),
      backgroundColor: usuarioEsta.color[0],
      title: (title != null) ? _cardTitle(title) : null,
      header: Stack(
        children: [
          Icon(
            statusIcon[usuarioEsta],
            color: usuarioEsta.color[1],
            size: 100,
          ),
          if (usuarioEsta == NovidadesPaciente.NOVO)
            Text(
              "(NOVO)",
              style: TextStyle(
                fontFamily: "OpenSans",
                color: Colors.pink[700],
                fontWeight: FontWeight.bold,
              ),
            )
        ],
      ),
      body: <Widget>[
        ...dados.mapToWidget(
          (key, value) => SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _cardBody("$key: "),
                _cardBody("$value"),
              ],
            ),
          ),
        )
      ],
    );
  }
}
