import 'package:flutter/material.dart';
import 'package:samskritam/common/config/colors.dart';

Widget CustomImageIconLogo() {
  return Image.asset("assets/icon/icon.png");
}

Widget CustomImageSubLOGO() {
  return Image.asset("assets/icon/sublogo.png");
}

Widget CustomNoInternetImage() {
  return Image.asset("assets/images/alert.png");
}

Widget CustomUpdateImage() {
  return Image.asset("assets/images/update.png");
}

Widget CustomErrorImage() {
  return Image.asset("assets/images/warning.png");
}

Widget CustomGoogleImage() {
  return Image.asset("assets/images/google.png");
}

Widget CustomChakraImage() {
  return Image.asset("assets/images/stone.png");
}

Widget CustomLessonImage({
  String? text,
  double? fontSize,
  double? width,
  double? height,
}) {
  return SizedBox(
    width: width?? 400,
    height: height?? 200,
    child: Stack(
      children: [
        Center(child: CustomChakraImage()),
        Align(
          alignment: Alignment.center,
          child: Text(
            text?? "अध्याय - १",
            style: TextStyle(
              fontFamily: "Samskrit",
              fontSize: 48,
              fontWeight: FontWeight.w900,
              color: customBrownColor,
              shadows: [
                Shadow(
                    color: customBrownColorDark,
                    blurRadius: 1,
                    offset: Offset(2, 2)),
              ],
            ),
          ),
        )
      ],
    ),
  );
}
