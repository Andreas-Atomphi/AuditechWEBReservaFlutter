import 'package:flutter/material.dart';

class ContainerCard extends StatelessWidget {
  final EdgeInsets padding;
  final EdgeInsets margin;
  final Color backgroundColor, foregroundColor;
  final BorderRadius borderRadius;
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
    this.borderRadius = const BorderRadius.all(Radius.circular(15)),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        color: backgroundColor,
      ),
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
