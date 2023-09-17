import 'package:flutter/material.dart';
import 'package:samskritam/common/config/apptheme/theme_colors.dart';
import 'package:samskritam/common/widgets/custom_images.dart';
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
          MaterialStatePropertyAll(backgroundColor ?? customPrimaryBlueColor),
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
            MaterialStatePropertyAll(backgroundColor ?? customPrimaryBlueColor),
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
              child: CustomCrownImage(),
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

Widget sliderButton({required double value, required int divisions, required Function(double)? onChanged, required BuildContext context}){
    return SliderTheme(
    data: SliderTheme.of(context).copyWith(
      trackHeight: 18.0,
      activeTrackColor: customBhagwa,
      inactiveTrackColor: customDullWhite,
      thumbShape: const RoundSliderThumbShape(
        // enabledThumbRadius: 14.0,
        pressedElevation: 0,
        elevation: 0,
      ),
      thumbColor: customBhagwa,
      overlayColor: Colors.pink.withOpacity(0),
      // overlayShape: RoundSliderOverlayShape(overlayRadius: 32.0),
      tickMarkShape: RoundSliderTickMarkShape(),
      activeTickMarkColor: customBhagwaLight,
      inactiveTickMarkColor: customDullWhite,
      // valueIndicatorShape: PaddleSliderValueIndicatorShape(),
      // valueIndicatorColor: Colors.black,
      // valueIndicatorTextStyle: TextStyle(
      //   color: Colors.white,
      //   fontSize: 20.0,
      // ),
    ),
    child: Slider(
      min: 0.0,
      max: 100.0,
      value: value,
      divisions: divisions,
      // label: '${value.round()}',
      onChanged: onChanged,
    ),
  );
}

Widget myElevatedButton({required Function()? onPressed, 
required String text, required BuildContext context, 
Color? backgroundColor, Color? iconColor, 
double? width, double? height, double? iconSize, double? fontSize,
double? borderRadius }){

  // ElevatedButtonTheme(data: data, child: child
  double screenWidth = MediaQuery.of(context).size.width;

  return ElevatedButton(
    onPressed: onPressed, 
    style: ButtonStyle(
      minimumSize: MaterialStatePropertyAll(Size(width??screenWidth, height??100)),
      backgroundColor: MaterialStatePropertyAll(backgroundColor??customPrimaryBlueColor),
      // iconColor: MaterialStatePropertyAll(iconColor??whitestonecolor),
      iconSize: MaterialStatePropertyAll(iconSize??40),
      // overlayColor: MaterialStatePropertyAll(Colors.amber)
      // surfaceTintColor: MaterialStatePropertyAll(Colors.red),
      // shadowColor: MaterialStatePropertyAll(Colors.red),
      foregroundColor: MaterialStatePropertyAll(Colors.grey[100]),
      textStyle: MaterialStatePropertyAll(TextStyle(fontSize: fontSize??40,)),
      shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(borderRadius??4) ))
    ),
    child: Text(text),
  );

}

Widget listenToAudioButton({required Function()? onPressed, 
required Widget icon, required BuildContext context, 
Color? backgroundColor, Color? iconColor, 
double? width, double? height, double? iconSize}){

  // ElevatedButtonTheme(data: data, child: child

  return ElevatedButton(
    onPressed: onPressed, 
    style: ButtonStyle(
      minimumSize: MaterialStatePropertyAll(Size(width??100, height??100)),
      backgroundColor: MaterialStatePropertyAll(backgroundColor??customPrimaryBlueColor),
      iconColor: MaterialStatePropertyAll(iconColor??Colors.grey[100]),
      iconSize: MaterialStatePropertyAll(iconSize??40),
      // overlayColor: MaterialStatePropertyAll(Colors.amber)
      surfaceTintColor: MaterialStatePropertyAll(Colors.red),
      shadowColor: MaterialStatePropertyAll(Colors.red),
      // foregroundColor: MaterialStatePropertyAll(Colors.red),
      shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
    ),
    child: icon,
  );

}



