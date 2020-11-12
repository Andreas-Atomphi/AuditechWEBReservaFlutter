import 'package:flutter/material.dart';
import 'package:auditech_web/Telas/telas.dart';

Color primary = Color.fromRGBO(22, 71, 85, 1);
Color secondary = Color.fromRGBO(40, 53, 103, 1);
Color primaryHigh = Color.fromRGBO(82, 141, 155, 1);
Color destaque = Color.fromRGBO(40, 53, 103, 1);

Map<String, Widget Function(BuildContext context)> mainRoutes =
    <String, WidgetBuilder>{
  "inicio": (context) => Inicio(),
  "principal": (context) => Principal(),
};

Map<String, Widget Function(BuildContext context)> insideRoutes =
    <String, WidgetBuilder>{
  "pacientes": (context) => Pacientes(),
  "principal": (context) => Principal(),
};
