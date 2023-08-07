import 'package:flutter/material.dart';
import 'package:samskritam/common/config/apptheme/colors.dart';

Widget CustomEditText({
  double? height,
  double? width,
  required TextEditingController? controller,
  FocusNode? focus,
  bool? isPasswordhidden,
  bool? isValueCorrect,
  Color? cursorColor,
  TextInputType? keyboardType,
  Function()? onClickOnVisible,
  String? hintText,
  bool? isEnabled,
  bool? isReadOnly
}) {
  return SizedBox(
    height: height ?? 50,
    width: width ?? 300,
    child: TextField(
      enabled: isEnabled,
      readOnly: isReadOnly??false,
      // enableInteractiveSelection: isEnabled,
      controller: controller,
      focusNode: focus,
      style: TextStyle(),
      obscureText: isPasswordhidden?? false,
      cursorColor: cursorColor,
      keyboardType: keyboardType?? TextInputType.name,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(left: 20, right: 20),
        hintText: hintText?? "Name",
        suffixIcon:(isPasswordhidden == null && isValueCorrect == null)? null : Padding(
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
                onPressed: (){},
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
        // disabledBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.all(
        //     Radius.circular(32),
            
        //   ),
        // ),
      ),
    ),
  );
}
