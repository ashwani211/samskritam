import 'package:flutter/material.dart';
import 'package:samskritam/features/auth/screens/profile.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ProfileScreen(),
        // child: ResetPasswordScreen(),
        // child: LoginScreen(),
        // child: InternetErrorScreen(),
        // child: UpdateScreen(
        //   title: "New version available!",
        //   subTitle:
        //       "Update the app for the new features and better experience.",
        //   newVersionNumber: "1.0.1",
        //   whatsnew: [
        //     "Bug fixes",
        //     "performance improvements",
        //     "New features added, New and improved UI",
        //   ],
        //   isCancellable: true,
        // ),
        // child: ErrorScreen(title: textErrorTitle ,error: "Some Error",),
        // child: LandingScreen(),
        // child: SplashScreen(),
      ),
    );
  }
}
