import 'package:flutter/material.dart';
import 'package:samskritam/common/config/colors.dart';
import 'package:samskritam/common/widgets/custom_text_style.dart';

PreferredSizeWidget customWhiteAppbar({
  required String title,
  bool? isCenterTitle,
  double? fontSize,
}) {
  return AppBar(
    title: CustomHeadingText(text: title, fontSize: fontSize?? 20),
    centerTitle: isCenterTitle??true,
    actions: [
      IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.edit_rounded,
          color: customPrimaryColor,
        ),
      )
    ],
  );
}
