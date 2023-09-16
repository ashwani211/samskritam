import 'package:flutter/material.dart';
import 'package:samskritam/common/config/apptheme/theme_colors.dart';

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
      fontFamily: "Roboto",
    ),
  );
}

Widget CustomText({
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
      fontSize: fontSize?? 18,
      color: color?? null,
      fontWeight: fontWeight?? null,
      fontFamily: "Roboto",
    ),
  );
}

Widget CustomSmallText({
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
      fontSize: fontSize??14,
      color: color??customGreyColor,
      fontWeight: fontWeight?? FontWeight.w500,
      fontFamily: "Roboto",
    ),
  );
}

Widget CustomBlueButtomText({
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
      fontSize: fontSize?? null,
      color: color?? customWhite,
      fontWeight: fontWeight?? FontWeight.w500,
      fontFamily: "Roboto",
    ),
  );
}

Widget CustomWhiteButtomText({
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
      fontSize: fontSize?? null,
      color: color?? customGreyColor,
      fontWeight: fontWeight?? FontWeight.bold,
      fontFamily: "Roboto",
    ),
  );
}
