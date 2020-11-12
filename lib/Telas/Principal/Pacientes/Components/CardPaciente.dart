import 'package:flutter/material.dart';
import 'package:auditech_web/Telas/global/components.dart';
import 'package:auditech_web/mainData.dart';

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

class _SCardPaciente extends State<CardPaciente> {
  BoxShadow myShadow = BoxShadow(
    color: Colors.black.withOpacity(0.5),
    blurRadius: 5,
    offset: Offset(5, 5),
  );
  @override
  Widget build(BuildContext context) {
    List<Color> mainColor = widget.usuarioEsta.color;
    Text _cardBody(String text) => Text(
          text,
          style: FormatoTexto.tituloCard(
            cor: mainColor[1],
            weight: FontWeight.bold,
          ),
        );
    Text _cardTitle(String text) => Text(
          text,
          style: FormatoTexto.tituloCard(
            cor: mainColor[1],
            weight: FontWeight.bold,
          ),
        );
    Map statusIcon = {
      NovidadesPaciente.DESATIVADO: Icons.person,
      NovidadesPaciente.NORMAL: Icons.person,
      NovidadesPaciente.NOVO: Icons.new_releases,
      NovidadesPaciente.ALERTA: Icons.warning,
    };

    void press() {
      setState(
        () {
          myShadow = BoxShadow(
            color: Colors.black.withOpacity(0.5),
            blurRadius: 0,
            offset: Offset(0, 0),
          );
        },
      );
    }

    return InkWell(
      onTapDown: (c) {
        press();
      },
      onHover: (c) {
        setState(
          () {
            myShadow = (c)
                ? BoxShadow(
                    color: Colors.black.withOpacity(0.65),
                    blurRadius: 2.5,
                    offset: Offset(7, 7),
                  )
                : BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    blurRadius: 5,
                    offset: Offset(5, 5),
                  );
          },
        );
      },
      onTap: () {
        press();
        widget.aoClicar();
      },
      child: ContainerCard(
        boxShadow: [
          myShadow,
        ],
        padding: EdgeInsets.all(20),
        backgroundColor: mainColor[0],
        title: (widget.title != null) ? _cardTitle(widget.title) : null,
        header: Stack(
          children: [
            Icon(
              statusIcon[widget.usuarioEsta],
              color: mainColor[1],
              size: 100,
            ),
            if (widget.usuarioEsta == NovidadesPaciente.NOVO)
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
          ...widget.dados.mapToWidget(
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
      ),
    );
  }
}

class CardPaciente extends StatefulWidget {
  final EdgeInsets padding;
  final NovidadesPaciente usuarioEsta;
  final Icon icone;
  final Map<String, String> dados;
  final String title;
  final void Function() aoClicar;
  CardPaciente({
    this.padding = const EdgeInsets.all(20),
    this.usuarioEsta = NovidadesPaciente.NORMAL,
    this.title,
    this.aoClicar,
    this.icone = const Icon(
      Icons.person,
      size: 20,
    ),
    this.dados = const {
      "atributo": "valor",
    },
  });
  State<CardPaciente> createState() {
    return _SCardPaciente();
  }
}
