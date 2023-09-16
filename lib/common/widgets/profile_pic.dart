import 'package:flutter/material.dart';
import 'package:samskritam/common/config/apptheme/theme_colors.dart';
import 'package:samskritam/common/widgets/custom_images.dart';

Widget ProfilePic({
  double? size,
  bool? isSquare,
  Color? backgroundColor,
  double? radius,
}) {
  
  return ClipRRect(
    borderRadius: BorderRadius.circular(radius??8),
    child: Container(
      decoration: BoxDecoration(
        color: backgroundColor?? customWhite,
      ),
      child: AnyCustomImage(
        width: size,
        height: size,
        child: CustomProfileImage(),
      ),
    ),
  );
}
