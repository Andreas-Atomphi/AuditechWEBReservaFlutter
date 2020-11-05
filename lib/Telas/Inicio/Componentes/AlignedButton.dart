import 'package:flutter/material.dart';

class AlignedButton extends Align {
  final Alignment alignment;
  final Color color, textColor;
  final EdgeInsetsGeometry padding;
  final String text;
  final void Function() aoPressionar;
  AlignedButton(
      {this.alignment,
      this.color,
      this.text,
      this.padding,
      this.aoPressionar,
      this.textColor})
      : super(
          alignment: alignment,
          child: RaisedButton(
            color: color,
            textColor: textColor,
            padding: padding,
            elevation: 0,
            disabledElevation: 0,
            focusElevation: 0,
            hoverElevation: 0,
            highlightElevation: 0,
            child: Text(
              text,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            onPressed: aoPressionar,
          ),
        );
}
