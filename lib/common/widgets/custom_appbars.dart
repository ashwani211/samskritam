import 'package:flutter/material.dart';
import 'package:samskritam/common/config/apptheme/theme_colors.dart';
import 'package:samskritam/common/widgets/custom_images.dart';
import 'package:samskritam/common/widgets/custom_text_style.dart';

PreferredSizeWidget CustomWhiteAppbar({
  required String title,
  bool? isCenterTitle,
  double? fontSize,
  Function()? onActionPressed,
}) {
  return AppBar(
    title: CustomHeadingText(
      text: title,
      fontSize: fontSize ?? 18,
    ),
    centerTitle: isCenterTitle ?? true,
    actions: [
      IconButton(
        onPressed: onActionPressed,
        icon: Icon(
          Icons.edit_rounded,
          color: customPrimaryBlueColor,
        ),
      )
    ],
  );
}

PreferredSizeWidget CustomBlueAppbar(
    {Widget? leadingWidget,
    required String title,
    bool? isCenterTitle,
    double? fontSize,
    Function()? onLeadingPressed,
    Function()? onActionPressed,
    Widget? actionWidget,
    Color? backgroundColor}) {
  return AppBar(
    backgroundColor: backgroundColor ?? customPrimaryBlueColor,
    leading: IconButton(
      onPressed: onLeadingPressed,
      icon: leadingWidget ??
          Icon(
            Icons.supervised_user_circle_sharp,
            color: customWhite,
            size: 32,
          ),
    ),
    title: CustomSmallText(
      text: title,
      fontSize: fontSize ?? 18,
      color: customWhite,
    ),
    centerTitle: isCenterTitle ?? true,
    actions: [
      IconButton(
        onPressed: onActionPressed,
        icon: actionWidget ??
            Icon(
              Icons.settings,
              color: customWhite,
              size: 32,
            ),
      ),
    ],
  );
}

Widget CustomLowerAppBar({
  Color? backgroundColor,
  double? height,
}) {
  return SizedBox(
    height: height ?? 60,
    child: Material(
      color: customLightBlueColor,
      child: Row(
        children: [
          Expanded(
            child: InkWell(
              onTap: () {},
              child: Center(
                child: AnyCustomImage(
                  height: 32,
                  child: CustomNotificationImage(),
                ),
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {},
              child: Center(
                child: SizedBox(
                  height: 32,
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomChakraImage(),
                      SizedBox(
                        width: 8,
                      ),
                      CustomSmallText(
                        text: "1",
                        fontSize: 16,
                        color: customWhite,
                      ),
                    ],
                  ),
                ),
              ),
              // child: Center(
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       AnyCustomImage(
              //         height: 32,
              //         child: CustomChakraImage(),
              //       ),
              //       SizedBox(
              //         width: 8,
              //       ),
              //       CustomSmallText(
              //         text: "12",
              //         fontSize: 16,
              //         color: customWhite,
              //       ),
              //     ],
              //   ),
              // ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {},
              child: Center(
                child: SizedBox(
                  height: 32,
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomLotusImage(),
                      SizedBox(
                        width: 8,
                      ),
                      CustomSmallText(
                        text: "235",
                        fontSize: 16,
                        color: customWhite,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {},
              child: Center(
                child: AnyCustomImage(
                  height: 32,
                  width: 32,
                  child: CustomBagImage(),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
