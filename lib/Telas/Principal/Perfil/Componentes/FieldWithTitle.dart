import 'package:flutter/material.dart';

class FieldWTitle extends StatelessWidget {
  final String title, dica;
  final double width;
  final TextEditingController controller;
  final bool ativado;
  FieldWTitle({
    this.title = "",
    this.width = 300,
    this.controller,
    this.ativado = true,
    this.dica,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: Column(
        children: [
          Align(
            alignment: Alignment(-1.025, 0),
            child: Text(
              "$title",
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
              ),
            ),
          ),
          Container(
            height: 32,
            child: TextField(
              controller: controller,
              style: TextStyle(
                fontSize: 17,
              ),
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    style: BorderStyle.solid,
                    width: 0,
                  ),
                  borderRadius: BorderRadius.circular(0),
                ),
                contentPadding:
                    EdgeInsets.only(left: 5, right: 5, top: 1, bottom: 1),
                hintText: dica,
                enabled: ativado,
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
