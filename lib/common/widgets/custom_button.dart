import 'package:flutter/material.dart';
import 'package:samskritam/common/config/colors.dart';
import 'package:samskritam/common/widgets/custom_text_style.dart';

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
      backgroundColor: MaterialStatePropertyAll(backgroundColor ?? null),
      minimumSize: MaterialStatePropertyAll(Size(width ?? 50, height ?? 50)),
    ),
    child: Text(
      style: TextStyle(color: textColor ?? null),
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
      backgroundColor:
          MaterialStatePropertyAll(backgroundColor ?? customPrimaryColor),
      minimumSize: MaterialStatePropertyAll(Size(width ?? 50, height ?? 60)),
    ),
    child: CustomBlueButtomText(
      text: buttonText,
      color: textColor,
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
        backgroundColor:
            MaterialStatePropertyAll(backgroundColor ?? customWhite),
        minimumSize: MaterialStatePropertyAll(Size(width ?? 50, height ?? 60)),
        side: MaterialStatePropertyAll(
            BorderSide(width: 2, color: customLightGreyColor))),
    child: CustomWhiteButtomText(
      text: buttonText,
      color: textColor,
    ),
  );
}

Widget CustomBlueUpgradeButton({
  required String buttonText,
  required Function() onPressed,
  Color? backgroundColor,
  Color? textColor,
  double? fontSize,
  double? width,
  double? height,
}) {
  return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor:
            MaterialStatePropertyAll(backgroundColor ?? customPrimaryColor),
        minimumSize: MaterialStatePropertyAll(Size(width ?? 50, height ?? 60)),
      ),
      child: SizedBox(
        width: width ?? 300,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 28,
              height: 28,
              child: Icon(
                Icons.kitesurfing_sharp,
                color: Colors.yellow,
              ),
            ),
            CustomBlueButtomText(
              text: buttonText,
              color: textColor,
              fontSize: fontSize??16,
              fontWeight: FontWeight.w500
            ),
            Icon(
              Icons.arrow_forward_ios_rounded,
              color: customWhite,
              size: 20,
            )
          ],
        ),
      ));
}
