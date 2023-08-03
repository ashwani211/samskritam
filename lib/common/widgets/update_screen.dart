import 'package:flutter/material.dart';
import 'package:samskritam/common/widgets/custom_button.dart';
import 'package:samskritam/common/widgets/custom_images.dart';
import 'package:samskritam/common/widgets/custom_text_style.dart';

class UpdateScreen extends StatelessWidget {
  final String title;
  final String subTitle;
  final String newVersionNumber;
  final List<String> whatsnew;
  final bool isCancellable;
  final Function()? update;

  const UpdateScreen({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.newVersionNumber,
    required this.whatsnew,
    required this.isCancellable,
    this.update,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(left:24.0, right: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 24,
              ),
              SizedBox(
                height: 160,
                child: CustomUpdateImage(),
              ),
              SizedBox(
                height: 72,
              ),
              CustomHeadingText(text: title),
              SizedBox(
                height: 20,
              ),
              CustomSmallText(text: subTitle, textAlign: TextAlign.center),
              SizedBox(
                height: 40,
              ),
              CustomSmallText(text: "What's new in v" + newVersionNumber + ":", fontSize: 14, fontWeight: FontWeight.w600 ),
              SizedBox(
                height: 20,
              ),
              for(int i =0; i<whatsnew.length; i++)
                CustomSmallText(text: whatsnew[i],),
              
              SizedBox(
                height: 48,
              ),
              CustomBlueButton(
                buttonText: "Update",
                onPressed: update?? () {},
                width: 354,
              ),
              SizedBox(
                height: 24,
              ),
              isCancellable? CustomWhiteButton(
                buttonText: "Cancel",
                onPressed: () {},
                width: 354,
              ): SizedBox(),
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
