import 'package:flutter/material.dart';
import 'package:samskritam/features/global/config/colors.dart';

Widget CustomHeadingText({
  required String text,
  double? fontSize,
  Color? color,
  TextAlign? textAlign,
  FontWeight? fontWeight,
}) {
  return Text(
    text,
    textAlign: textAlign??null,
    style: TextStyle(
      fontSize: fontSize?? 24,
      color: color?? null,
      fontWeight: fontWeight?? FontWeight.bold,
    ),
  );
}

Widget CustomText({
  required String text,
  double? fontSize,
  Color? color,
  TextAlign? textAlign,
}) {
  return Text(
    text,
    textAlign: textAlign??null,
    style: TextStyle(
      fontSize: fontSize?? 18,
      color: color?? null,
    ),
  );
}

Widget CustomSmallText({
  required String text,
  double? fontSize,
  Color? color,
}) {
  return Text(
    text,
    style: TextStyle(
      fontSize: fontSize??14,
      color: color??customGreyColor,
    ),
  );
}
