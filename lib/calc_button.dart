import 'package:flutter/material.dart';

class CalcButton extends StatelessWidget {
  const CalcButton(
      {required this.text, required this.textColor, required this.fillColor,required this.action});

  final String text;
  final Color textColor;
  final bool fillColor;
  final Function() action;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: action,
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: fillColor ? Colors.orange : Colors.white),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(color: textColor, fontSize: 40),
        ),
      ),
    );
  }
}
