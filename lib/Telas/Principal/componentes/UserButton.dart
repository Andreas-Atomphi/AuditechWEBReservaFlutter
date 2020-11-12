import 'package:flutter/material.dart';

class UserButton extends InkWell {
  final void Function() aoPressionar;
  final double raio;
  final Color backgroundColor, foregroundColor;
  UserButton({
    this.aoPressionar,
    this.raio,
    this.backgroundColor,
    this.foregroundColor,
  }) : super(
          borderRadius: BorderRadius.all(Radius.circular(100)),
          onTap: aoPressionar,
          child: Align(
            child: Container(
              width: raio,
              height: raio,
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(100),
                ),
              ),
              child: Icon(
                Icons.person,
                size: 35,
                color: foregroundColor,
              ),
            ),
          ),
        );
}
