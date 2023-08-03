import 'package:flutter/material.dart';
import 'package:samskritam/common/config/constant_texts.dart';
import 'package:samskritam/common/widgets/custom_button.dart';
import 'package:samskritam/common/widgets/custom_text_style.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({
    super.key,
  });

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  bool? isCheckBoxTicked = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 40,
              ),
              SizedBox(
                width: 250,
                child: Image.asset("assets/icon/sublogo.png"),
              ),
              SizedBox(
                height: 24,
              ),
              CustomHeadingText(
                text: textLandingPageHeading,
              ),
              SizedBox(
                height: 40,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 28.0, right: 28),
                    child: CustomText(
                        text: textLandingAppDescription,
                        textAlign: TextAlign.justify),
                  ),
                ),
              ),
              SizedBox(
                height: 28,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 22.0, right: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                      value: isCheckBoxTicked,
                      onChanged: (onChanged) => setState(() {
                        isCheckBoxTicked = onChanged;
                      }),
                    ),
                    InkWell(
                      onTap: () =>setState(() {
                        isCheckBoxTicked = !isCheckBoxTicked!;
                      }),
                      child: CustomSmallText(text: textLandingChoice),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              isCheckBoxTicked!
                  ? CustomWhiteButton(
                      buttonText: textLandingButtonSkip,
                      onPressed: () {},
                      width: width,
                    )
                  : CustomBlueButton(
                      buttonText: textLandingButtonTakeTour,
                      onPressed: () {},
                      width: width,
                    ),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
