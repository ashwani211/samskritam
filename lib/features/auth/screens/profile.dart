import 'package:flutter/material.dart';
import 'package:samskritam/common/config/colors.dart';
import 'package:samskritam/common/widgets/custom_appbars.dart';
import 'package:samskritam/common/widgets/custom_button.dart';
import 'package:samskritam/common/widgets/custom_images.dart';
import 'package:samskritam/common/widgets/custom_text_editing.dart';
import 'package:samskritam/common/widgets/custom_text_style.dart';
import 'package:samskritam/common/widgets/profile_pic.dart';

class ProfileScreen extends StatefulWidget {
  static const String routeName = "login-screen";
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  FocusNode? focus;

  TextEditingController? emailController;
  TextEditingController? passwordController;

  bool isPasswordhidden = true;

  void changePasswordHidden(){
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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customWhiteAppbar(title: "Profile", fontSize: 16),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 140,
                    height: 140,
                    child: ProfilePic(),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    width: 300,
                    height: 28,
                    child: CustomSmallText(text: "Name"),
                  ),
                  CustomEditText(
                    width: 340,
                    height: 50,
                    isValueCorrect: true,
                    controller: emailController,
                    focus: focus,
                    onClickOnVisible: changePasswordHidden
                  ),
                  SizedBox(
                    width: 340,
                    height: 50,
                    child: TextField(
                      controller: emailController!,
                      focusNode: focus!,
                      style: TextStyle(),
                      cursorColor: customPrimaryColor,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 20, right: 20),
                        hintText: "Name",
                        suffixIcon: Padding(
                          padding: const EdgeInsets.only(right: 4.0),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              isPasswordhidden
                                  ? Icons.check_circle_rounded
                                  : Icons.cancel_rounded,
                              color: isPasswordhidden
                                  ? customGreenColor
                                  : customRedColor,
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
                    height: 10,
                  ),
                  SizedBox(
                    width: 300,
                    height: 28,
                    child: CustomSmallText(text: "Username"),
                  ),
                  SizedBox(
                    width: 340,
                    height: 50,
                    child: TextField(
                      controller: emailController!,
                      focusNode: focus!,
                      style: TextStyle(),
                      cursorColor: customPrimaryColor,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 20, right: 20),
                        hintText: "Username",
                        suffixIcon: Padding(
                          padding: const EdgeInsets.only(right: 4.0),
                          child: IconButton(
                            onPressed: () => setState(() {
                              isPasswordhidden = !isPasswordhidden;
                            }),
                            icon: Icon(
                              isPasswordhidden
                                  ? Icons.check_circle_rounded
                                  : Icons.cancel_rounded,
                              color: isPasswordhidden
                                  ? customGreenColor
                                  : customRedColor,
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
                    height: 10,
                  ),
                  SizedBox(
                    width: 300,
                    height: 28,
                    child: CustomSmallText(text: "Email"),
                  ),
                  SizedBox(
                    width: 340,
                    height: 50,
                    child: TextField(
                      controller: emailController!,
                      focusNode: focus!,
                      style: TextStyle(),
                      cursorColor: customPrimaryColor,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 20, right: 20),
                        hintText: "Email",
                        suffixIcon: Padding(
                          padding: const EdgeInsets.only(right: 4.0),
                          child: IconButton(
                            onPressed: () => setState(() {
                              isPasswordhidden = !isPasswordhidden;
                            }),
                            icon: Icon(
                              isPasswordhidden
                                  ? Icons.check_circle_rounded
                                  : Icons.cancel_rounded,
                              color: isPasswordhidden
                                  ? customGreenColor
                                  : customRedColor,
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
                    height: 10,
                  ),
                  SizedBox(
                    width: 300,
                    height: 28,
                    child: CustomSmallText(text: "Phone"),
                  ),
                  SizedBox(
                    width: 340,
                    height: 50,
                    child: TextField(
                      controller: emailController!,
                      focusNode: focus!,
                      style: TextStyle(),
                      cursorColor: customPrimaryColor,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 20, right: 20),
                        hintText: "Phone",
                        suffixIcon: Padding(
                          padding: const EdgeInsets.only(right: 4.0),
                          child: IconButton(
                            onPressed: () => setState(() {
                              isPasswordhidden = !isPasswordhidden;
                            }),
                            icon: Icon(
                              isPasswordhidden
                                  ? Icons.check_circle_rounded
                                  : Icons.cancel_rounded,
                              color: isPasswordhidden
                                  ? customGreenColor
                                  : customRedColor,
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
                    height: 40,
                  ),
                  CustomBlueUpgradeButton(
                    width: 300,
                    height: 60,
                    buttonText: "Go Premium",
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
