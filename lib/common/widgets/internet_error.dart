import 'package:flutter/material.dart';
import 'package:samskritam/common/widgets/custom_button.dart';
import 'package:samskritam/common/widgets/custom_images.dart';
import 'package:samskritam/common/widgets/custom_text_style.dart';

class InternetErrorScreen extends StatelessWidget {
  final String? title;
  final String? subtitle;
  final Function()? retry;
  final Function()? contactUs;
  InternetErrorScreen({
    Key? key,
    this.title,
    this.subtitle,
    this.retry,
    this.contactUs,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 24.0, right: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 24,
              ),
              SizedBox(
                height: 72,
              ),
              SizedBox(
                height: 160,
                child: Opacity(
                  opacity: .72,
                  child: CustomNoInternetImage(),
                ),
              ),
              SizedBox(
                height: 72,
              ),
              CustomHeadingText(text: title ?? "No Internet Connection"),
              SizedBox(
                height: 40,
              ),
              CustomSmallText(
                  text: subtitle ??
                      "Please check your internet connection and try again",
                  textAlign: TextAlign.center),
              SizedBox(
                height: 48,
              ),
              CustomBlueButton(
                buttonText: "Retry",
                onPressed: retry ?? () {},
                width: 354,
              ),
              SizedBox(
                height: 24,
              ),
              CustomWhiteButton(
                buttonText: "Contact Us",
                onPressed: contactUs ?? () {},
                width: 354,
              ),
              SizedBox(
                height: 24,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
