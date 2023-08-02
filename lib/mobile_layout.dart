import 'package:flutter/material.dart';
import 'package:samskritam/features/landing/screens/landing_screen.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: LandingScreen(),
      ),
    );
  }
}