import 'package:flutter/material.dart';
import 'package:samskritam/common/config/apptheme/colors.dart';

Widget AnyCustomImage({double? width, double? height, required Widget child, EdgeInsetsGeometry? padding}){
  return Padding(
    padding: padding??const EdgeInsets.all(0),
    child: SizedBox(
      width: width??50,
      height: height??50,
      child: child,
    ),
  );
}

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

Widget CustomStoneImage() {
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
        Center(child: CustomStoneImage()),
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

Widget CustomCrownImage() {
  return Image.asset("assets/images/crown.png");
}

Widget CustomProfileImage() {
  return Image.asset("assets/images/profile-default.png");
}

//Bottomnavigationbar images
Widget CustomDiyaImage() {
  return Image.asset("assets/images/bottom_nav/diya.png");
}

Widget CustomUnselectedDiyaImage() {
  return Image.asset("assets/images/bottom_nav/diya_grayscale.png");
}

Widget CustomBookImage() {
  return Image.asset("assets/images/bottom_nav/book.png");
}

Widget CustomUnselectedBookImage() {
  return Image.asset("assets/images/bottom_nav/book_grayscle.png");
}

Widget CustomTrophyImage() {
  return Image.asset("assets/images/bottom_nav/trophy.png");
}

Widget CustomUnselectedTrophyImage() {
  return Image.asset("assets/images/bottom_nav/trophy_grayscale.png");
}

Widget CustomChatImage() {
  return Image.asset("assets/images/bottom_nav/chat.png");
}

Widget CustomUnselectedChatImage() {
  return Image.asset("assets/images/bottom_nav/chat_grayscale.png");
}

Widget CustomDictionaryImageDictionary() {
  return Image.asset("assets/images/bottom_nav/dictionary.png");
}

Widget CustomUnselectedDictionaryImage() {
  return Image.asset("assets/images/bottom_nav/dictionary_grayscale.png");
}

