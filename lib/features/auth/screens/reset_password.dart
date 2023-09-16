import 'package:flutter/material.dart';
import 'package:samskritam/common/config/apptheme/theme_colors.dart';
import 'package:samskritam/common/widgets/custom_button.dart';
import 'package:samskritam/common/widgets/custom_images.dart';
import 'package:samskritam/common/widgets/custom_text_editing.dart';
import 'package:samskritam/common/widgets/custom_text_style.dart';

class ResetPasswordScreen extends StatefulWidget {
  static const String routeName = "login-screen";
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  FocusNode? focus;

  TextEditingController? emailController;
  TextEditingController? passwordController;

  bool isPasswordhidden = true;

  @override
  void initState() {
    super.initState();

    focus = FocusNode();

    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    focus?.dispose();
    emailController?.dispose();
    passwordController?.dispose();

    super.dispose();

  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 250,
                child: CustomImageSubLOGO(),
              ),
              SizedBox(
                height: 40,
              ),
              CustomHeadingText(text: "Reset Password"),
              SizedBox(
                height: 20,
              ),
              CustomEditText(
                width: 300,
                height: 50,
                controller: emailController,
                focus: focus,
                hintText: "email",
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 20,
              ),
              CustomBlueButton(
                width: 300,
                height: 60,
                buttonText: "Login",
                onPressed: () {},
              ),
              SizedBox(
                height: 24,
              ),
              InkWell(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomSmallText(text: "Don't want to reset password? "),
                    CustomSmallText(text: "Sign in", color: customPrimaryBlueColor)
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              )
            ],
          ),
        ),
      ),
    );
  }
}
