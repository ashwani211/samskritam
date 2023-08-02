
import 'package:flutter/material.dart';

Widget CustomButton({
  required String buttonText,
  required Function() onPressed,
  Color? backgroundColor,
  Color? textColor,
  double? width,
  double? height,
}) {
  return ElevatedButton(
    onPressed: onPressed,
    style: ButtonStyle(
      backgroundColor: MaterialStatePropertyAll(backgroundColor??null),
      minimumSize: MaterialStatePropertyAll(Size(width??50,height??50)),
    ),
    child: Text(
      style: TextStyle(color: textColor??null),
      buttonText,
    ),
  );
}
