import 'package:flutter/material.dart';
import 'package:samskritam/common/widgets/custom_appbars.dart';
import 'package:samskritam/common/widgets/profile_pic.dart';

class LessonsScreen extends StatelessWidget {
  const LessonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomBlueAppbar(
        onLeadingPressed: (){},
        leadingWidget: ProfilePic(size: 32,),
        title: "King Kong",
      ),
      body: Column(
        children: [
          CustomLowerAppBar(),
          Center(
            child: Text("Hello"),
          ),
        ],
      ),
    );
  }
}
