import 'package:flutter/material.dart';

class NumberPadButton extends StatelessWidget {
  final String buttonText;
  final Color buttonColor;
  final Color textColor;
  final Function() buttonAction;

  const NumberPadButton(
      {Key? key,
      required this.buttonText,
      required this.buttonColor,
      required this.textColor,
      required this.buttonAction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 55,
      minWidth: 120,
      onPressed: buttonAction,
      child: Center(
        child: Text(buttonText,
            style: TextStyle(
                fontWeight: FontWeight.w400, fontSize: 30, color: textColor)),
      ),
      color: buttonColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 10,
    );
  }
}
