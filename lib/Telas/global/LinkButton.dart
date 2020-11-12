import 'package:flutter/material.dart';

class LinkButton extends StatelessWidget {
  final String text;
  final ButtonStyle style;
  final void Function() aoPressionar;

  const LinkButton({
    this.text,
    this.style,
    this.aoPressionar,
  });
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: style,
      onPressed: aoPressionar,
      child: Text(
        text,
        style: TextStyle(decoration: TextDecoration.underline),
      ),
    );
  }
}
