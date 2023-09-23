import 'package:flutter/material.dart';
import 'package:samskritam/common/widgets/custom_bottom_navigationbars.dart';
import 'package:samskritam/features/dictionary/screens/dictionary_screen.dart';
import 'package:samskritam/features/leaderboard/screens/leaderboard_screen.dart';
import 'package:samskritam/features/social/screens/leaderboard_screen.dart';
import 'package:samskritam/features/stories/screens/story_home.dart';

import 'features/lessons/screens/lessons_homescreen.dart';

class MobileLayout extends StatefulWidget {
  const MobileLayout({super.key, required this.title});

  final String title;

  @override
  State<MobileLayout> createState() => _MobileLayoutState();
}

class _MobileLayoutState extends State<MobileLayout> {
  int currentIndex = 0;

  List<Widget> pages = [
    LessonsHomeScreen(),
    StoryHomeScreen(),
    LeaderBoardScreen(),
    SocialScreen(),
    DictionaryScreen()
  ];

  void changeIndex(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      // body: Center(
      //   child: LessonsHomeScreen(),
      //   // child: ProfileScreen(),
      //   // child: ResetPasswordScreen(),
      //   // child: SignupScreen(),
      //   // child: InternetErrorScreen(),
      //   // child: UpdateScreen(
      //   //   title: "New version available!",
      //   //   subTitle:
      //   //       "Update the app for the new features and better experience.",
      //   //   newVersionNumber: "1.0.1",
      //   //   whatsnew: [
      //   //     "Bug fixes",
      //   //     "performance improvements",
      //   //     "New features added, New and improved UI",
      //   //   ],
      //   //   isCancellable: true,
      //   // ),
      //   // child: ErrorScreen(title: textErrorTitle ,error: "Some Error",),
      //   // child: LandingScreen(),
      //   // child: SplashScreen(),
      // ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: currentIndex,
        isDisplayingMessage: true,
        onNavigationTapped: changeIndex,
      ),
    );
  }
}
