import 'package:flutter/material.dart';
import 'package:samskritam/common/config/colors.dart';

Widget CustomEditText({
  double? height,
  double? width,
  required TextEditingController? controller,
  required FocusNode? focus,
  bool? isPasswordhidden,
  bool? isValueCorrect,
  Color? cursorColor,
  TextInputType? keyboardType,
  Function()? onClickOnVisible,
  String? hintText,
}) {
  return SizedBox(
    height: height ?? 50,
    width: width ?? 300,
    child: TextField(
      controller: controller,
      focusNode: focus!,
      style: TextStyle(),
      obscureText: isPasswordhidden?? false,
      cursorColor: cursorColor ?? null,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(left: 20, right: 16),
        hintText: "Name",
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 4.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              (isPasswordhidden!=null) ? IconButton(
                onPressed: onClickOnVisible,
                icon: Icon(
                  isPasswordhidden ? Icons.visibility : Icons.visibility_off,
                  color: customLightGreyColor,
                ),
              ) : SizedBox(),
              (isValueCorrect!=null) ? IconButton(
                onPressed: onClickOnVisible,
                icon: Icon(
                  isValueCorrect
                      ? Icons.check_circle_rounded
                      : Icons.cancel_rounded,
                  color: isValueCorrect ? customGreenColor : customRedColor,
                ),
              ) : SizedBox(),
            ],
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(32),
          ),
        ),
      ),
    ),
  );
}
