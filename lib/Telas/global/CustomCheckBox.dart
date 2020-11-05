import 'package:flutter/material.dart';

enum TextSide { LEFT, RIGHT }

class StatelessCheckBox extends StatelessWidget {
  final String text;
  final bool checked;
  final void Function(bool value) onChanged;
  final TextSide side;

  StatelessCheckBox({this.text, this.checked, this.onChanged, this.side});

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: checked,
      activeColor: Colors.blue,
      controlAffinity: ListTileControlAffinity.platform,
      onChanged: onChanged,
      title: Text(
        text,
        style: TextStyle(
          fontSize: 20,
          fontFamily: "OpenSans",
        ),
      ),
    );
  }
}
