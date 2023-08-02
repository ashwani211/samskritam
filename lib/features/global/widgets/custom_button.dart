
import 'package:flutter/material.dart';
import 'package:samskritam/features/global/config/colors.dart';
import 'package:samskritam/features/global/widgets/custom_text_style.dart';

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

Widget CustomBlueButton({
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
      backgroundColor: MaterialStatePropertyAll(backgroundColor??customPrimaryColor),
      minimumSize: MaterialStatePropertyAll(Size(width??50,height??50)),
    ),
    child: Text(
      style: TextStyle(color: textColor??Colors.white),
      buttonText,
    ),
  );
}

Widget CustomWhiteButton({
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
    // child: Text(
    //   style: TextStyle(color: textColor??customGreyColor),
    //   buttonText,
    // ),
    child: CustomWhiteButtomText(text: buttonText, color: textColor),
  );
}
