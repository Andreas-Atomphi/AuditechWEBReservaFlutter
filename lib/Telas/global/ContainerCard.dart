import 'package:flutter/material.dart';

class ContainerCard extends StatelessWidget {
  final EdgeInsets padding;
  final EdgeInsets margin;
  final Color backgroundColor, foregroundColor;

  final Widget header, title;
  final List<Widget> body;

  ContainerCard({
    this.padding,
    this.margin,
    this.backgroundColor = Colors.white,
    this.foregroundColor = Colors.black,
    this.body,
    this.header,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: padding,
      color: backgroundColor,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            header,
            title,
            ...body,
          ]..removeWhere((w) => w == null),
        ),
      ),
    );
  }
}
