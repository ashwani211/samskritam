import 'package:flutter/material.dart';
import 'package:samskritam/common/widgets/error_screen.dart';

class LeaderBoardScreen extends StatelessWidget {
  const LeaderBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ErrorScreen(title: "Error!", error: "null");
  }
}