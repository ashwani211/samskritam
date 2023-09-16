import 'package:flutter/material.dart';
import 'package:samskritam/common/config/apptheme/theme_colors.dart';
import 'package:samskritam/common/widgets/custom_button.dart';
import 'package:samskritam/common/widgets/custom_images.dart';
import 'package:samskritam/common/widgets/custom_text_editing.dart';
import 'package:samskritam/common/widgets/custom_text_style.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = "login-screen";
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  FocusNode? focus;

  TextEditingController? emailController;
  TextEditingController? passwordController;

  bool isPasswordhidden = true;

  void changePasswordHidden() {
    setState(() {
      isPasswordhidden = !isPasswordhidden;
    });
  }

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
              CustomHeadingText(text: "Login"),
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
              CustomEditText(
                width: 300,
                height: 50,
                controller: passwordController,
                focus: focus,
                hintText: "password",
                keyboardType: TextInputType.visiblePassword,
                isPasswordhidden: isPasswordhidden,
                onClickOnVisible: changePasswordHidden,
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 300,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    onTap: () {},
                    child: CustomSmallText(text: "Forgot password?"),
                  ),
                ),
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
                height: 20,
              ),
              CustomSmallText(text: "Or Login with"),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
                child: InkWell(
                  onTap: () {},
                  child: CustomGoogleImage(),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomSmallText(text: "Don't have an account? "),
                    CustomSmallText(text: "Sign up", color: customPrimaryBlueColor)
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
