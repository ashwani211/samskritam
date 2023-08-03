import 'package:flutter/material.dart';
import 'package:samskritam/common/config/colors.dart';
import 'package:samskritam/common/widgets/custom_button.dart';
import 'package:samskritam/common/widgets/custom_images.dart';
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

  @override
  void initState() {
    super.initState();

    focus = FocusNode();

    emailController = TextEditingController();
    passwordController = TextEditingController();
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
              SizedBox(
                width: 300,
                height: 50,
                child: TextField(
                  controller: emailController!,
                  focusNode: focus!,
                  style: TextStyle(),
                  cursorColor: customPrimaryColor,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20, right: 20),
                    hintText: "email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(32),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 300,
                height: 50,
                child: TextField(
                  controller: passwordController!,
                  focusNode: focus!,
                  style: TextStyle(),
                  cursorColor: customPrimaryColor,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: isPasswordhidden,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20, right: 20),
                    hintText: "password",
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(right: 4.0),
                      child: IconButton(
                        onPressed: () => setState(() {
                          isPasswordhidden = !isPasswordhidden;
                        }),
                        icon: Icon(
                          isPasswordhidden
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(32),
                      ),
                    ),
                  ),
                ),
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
                    CustomSmallText(text: "Sign up", color: customPrimaryColor)
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
