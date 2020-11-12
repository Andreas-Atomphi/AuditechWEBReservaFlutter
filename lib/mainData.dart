import 'package:flutter/material.dart';
import 'package:auditech_web/Telas/telas.dart';

extension ColorFormula on Color {
  Color sumRGB(int sumnum) {
    int red = (this.red + sumnum > 255)
        ? this.red + (this.red - 255)
        : this.red + sumnum;
    int green = (this.green + sumnum > 255)
        ? this.green + (this.green - 255)
        : this.green + sumnum;
    int blue = (this.blue + sumnum > 255)
        ? this.blue + (this.blue - 255)
        : this.blue + sumnum;
    return Color.fromRGBO(red, green, blue, this.opacity);
  }

  Color sumRGBO(int sumnum) {
    int red = (this.red + sumnum > 255)
        ? this.red + (this.red - 255)
        : this.red + sumnum;
    int green = (this.green + sumnum > 255)
        ? this.green + (this.green - 255)
        : this.green + sumnum;
    int blue = (this.blue + sumnum > 255)
        ? this.blue + (this.blue - 255)
        : this.blue + sumnum;
    double o = (this.opacity + sumnum > 1)
        ? this.opacity + (this.opacity - 1)
        : this.opacity + sumnum;
    return Color.fromRGBO(red, green, blue, o);
  }

  Color sumARGB(int sumnum) {
    int red = (this.red + sumnum > 255)
        ? this.red + (this.red - 255)
        : this.red + sumnum;
    int green = (this.green + sumnum > 255)
        ? this.green + (this.green - 255)
        : this.green + sumnum;
    int blue = (this.blue + sumnum > 255)
        ? this.blue + (this.blue - 255)
        : this.blue + sumnum;
    int a = (this.alpha + sumnum > 255)
        ? this.alpha + (this.alpha - 255)
        : this.alpha + sumnum;
    return Color.fromARGB(a, red, green, blue);
  }

  Color subRGB(int sumnum) {
    int red = (this.red - sumnum < 0) ? this.red - this.red : this.red - sumnum;
    int green = (this.green - sumnum < 0)
        ? this.green - this.green
        : this.green - sumnum;
    int blue =
        (this.blue - sumnum < 0) ? this.blue - this.blue : this.blue - sumnum;
    return Color.fromRGBO(red, green, blue, this.opacity);
  }

  Color subRGBO(int sumnum) {
    int red = (this.red - sumnum < 0) ? this.red - this.red : this.red - sumnum;
    int green = (this.green - sumnum < 0)
        ? this.green - this.green
        : this.green - sumnum;
    int blue =
        (this.blue - sumnum < 0) ? this.blue - this.blue : this.blue - sumnum;
    double o = (this.opacity - sumnum < 0)
        ? this.opacity - this.opacity
        : this.opacity - sumnum;
    return Color.fromRGBO(red, green, blue, o);
  }

  Color subARGB(int sumnum) {
    int red = (this.red - sumnum < 0) ? this.red - this.red : this.red - sumnum;
    int green = (this.green - sumnum < 0)
        ? this.green - this.green
        : this.green - sumnum;
    int blue =
        (this.blue - sumnum < 0) ? this.blue - this.blue : this.blue - sumnum;
    int a = (this.alpha - sumnum < 0)
        ? this.alpha - this.alpha
        : this.alpha - sumnum;
    return Color.fromARGB(a, red, green, blue);
  }

  Color operator +(Color cor) {
    int red = (this.red + cor.red < 255)
        ? this.red + (this.red - 255)
        : this.red + cor.red;
    int green = (this.green + cor.green > 255)
        ? this.green + (this.green - 255)
        : this.green + cor.green;
    int blue = (this.blue + cor.blue > 255)
        ? this.blue + (this.blue - 255)
        : this.blue + cor.blue;
    double o = (this.opacity + cor.opacity > 1)
        ? this.opacity + (this.opacity - 1)
        : this.opacity + cor.opacity;
    return Color.fromRGBO(red, green, blue, o);
  }

  Color operator -(Color cor) {
    int red =
        (this.red - cor.red < 0) ? this.red - this.red : this.red - cor.red;
    int green = (this.green - cor.green < 0)
        ? this.green - this.green
        : this.green - cor.green;
    int blue = (this.blue - cor.green < 0)
        ? this.blue - this.blue
        : this.blue - cor.green;
    double o = (this.opacity - cor.green < 0)
        ? this.opacity - this.opacity
        : this.opacity - cor.green;
    return Color.fromRGBO(red, green, blue, o);
  }
}

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
