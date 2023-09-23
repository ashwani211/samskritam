import 'package:flutter/material.dart';
import 'package:samskritam/common/widgets/custom_appbars.dart';
import 'package:samskritam/common/widgets/loading_screen.dart';
import 'package:samskritam/common/widgets/profile_pic.dart';

class StoryHomeScreen extends StatelessWidget {
  const StoryHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomBlueAppbar(
        title: "King Kong",
        onLeadingPressed: () {},
        leadingWidget: ProfilePic(
          size: 32,
        ),
      ),
      body: LoadingScreen(),
    );
  }
}
