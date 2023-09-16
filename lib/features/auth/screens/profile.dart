import 'package:flutter/material.dart';
import 'package:samskritam/common/widgets/custom_appbars.dart';
import 'package:samskritam/common/widgets/custom_button.dart';
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

  TextEditingController? nameController;
  TextEditingController? usernameController;
  TextEditingController? emailController;
  TextEditingController? phonecontroller;

  bool isPasswordhidden = true;

  void changePasswordHidden(){
    setState(() {
      isPasswordhidden = !isPasswordhidden;
    });
  }

  @override
  void initState() {
    super.initState();

    nameController = TextEditingController();
    usernameController = TextEditingController();
    emailController = TextEditingController();
    phonecontroller = TextEditingController();
    
  }

  @override
  void dispose() {

    nameController?.dispose();
    usernameController?.dispose();
    emailController?.dispose();
    phonecontroller?.dispose();

    super.dispose();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomWhiteAppbar(title: "Profile", fontSize: 18),
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
                    isValueCorrect: isPasswordhidden,
                    controller: nameController,
                    onClickOnVisible: changePasswordHidden,
                    hintText: "Name",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 300,
                    height: 28,
                    child: CustomSmallText(text: "Username"),
                  ),
                  CustomEditText(
                    width: 340,
                    height: 50,
                    isValueCorrect: isPasswordhidden,
                    controller: usernameController,
                    onClickOnVisible: changePasswordHidden,
                    hintText: "Username",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 300,
                    height: 28,
                    child: CustomSmallText(text: "Email"),
                  ),
                  CustomEditText(
                    width: 340,
                    height: 50,
                    isValueCorrect: isPasswordhidden,
                    controller: emailController,
                    onClickOnVisible: changePasswordHidden,
                    hintText: "Email",
                    keyboardType: TextInputType.emailAddress,
                    isReadOnly: true,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 300,
                    height: 28,
                    child: CustomSmallText(text: "Phone"),
                  ),
                  CustomEditText(
                    width: 340,
                    height: 50,
                    isValueCorrect: isPasswordhidden,
                    controller: phonecontroller,
                    onClickOnVisible: changePasswordHidden,
                    hintText: "Phone",
                    keyboardType: TextInputType.phone,
                    isReadOnly: true,
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
